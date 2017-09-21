package net.ssmc.services;

import java.lang.management.ManagementFactory;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

public class SystemUtilization {

	static int mb = 1024*1024;
	
	public static Map<String, Object> physicalMemory(){
		@SuppressWarnings("restriction")
		com.sun.management.OperatingSystemMXBean os = (com.sun.management.OperatingSystemMXBean)
				java.lang.management.ManagementFactory.getOperatingSystemMXBean();
		@SuppressWarnings("restriction")
		long physicalMemorySize = os.getTotalPhysicalMemorySize()/mb;
		System.out.println("PHYSICAL MEMORY DETAILS \n");
		System.out.println("total physical memory : " + physicalMemorySize + "MB ");
		@SuppressWarnings("restriction")
		long physicalfreeMemorySize = os.getFreePhysicalMemorySize()/mb;
       
		System.out.println("total physical memory : " + physicalfreeMemorySize + "MB ");
       
       	Map<String, Object> data = new HashMap<>();
       	data.put("physicalMemorySize", physicalMemorySize);
       	data.put("physicalfreeMemorySize", physicalfreeMemorySize);
       	
       	int percent = 4453/12173;
       	System.out.println(percent);
       	data.put("percent", percent);
       	
       	return data;
	}
	
	public static Map<String, Object> printJavaUsage(){
		Runtime runtime;
        byte[] bytes;
        System.out.println("\n \n**MEMORY DETAILS  ** \n");
        // Print initial memory usage.
        runtime = Runtime.getRuntime();
//        printUsage(runtime);
	    long total, free, used;
	    int mb = 1024*1024;
	
	    total = runtime.totalMemory();
	    free = runtime.freeMemory();
	    used = total - free;
	    System.out.println("\nTotal Memory: " + total / mb + "MB");
	    System.out.println(" Memory Used: " + used / mb + "MB");
	    System.out.println(" Memory Free: " + free / mb + "MB");
	    System.out.println("Percent Used: " + ((int)used/(int)total)*100 + "%");
	    System.out.println("Percent Free: " + ((int)free/(int)total)*100 + "%");
	    
	    
	    Map<String, Object> data = new HashMap<>();
	    data.put("used", ((double)used/(double)total)*100 + "%");
	    data.put("free", ((double)free/(double)total)*100 + "%");
	    data.put("total", total/mb);
		return data;
	}
	
	public static void printUsage(){
		com.sun.management.OperatingSystemMXBean os = (com.sun.management.OperatingSystemMXBean)
				java.lang.management.ManagementFactory.getOperatingSystemMXBean();
		long physicalMemorySize = os.getTotalPhysicalMemorySize();
		System.out.println("PHYSICAL MEMORY DETAILS \n");
		System.out.println("total physical memory : " + physicalMemorySize / mb + "MB ");
		long physicalfreeMemorySize = os.getFreePhysicalMemorySize();
       
       System.out.println("total physical memory : " + physicalfreeMemorySize / mb + "MB ");
       
		Runtime runtime;
        byte[] bytes;
        System.out.println("\n \n**MEMORY DETAILS  ** \n");
        // Print initial memory usage.
        runtime = Runtime.getRuntime();
        
	    long total, free, used;
	    int mb = 1024*1024;
	
	    total = runtime.totalMemory();
	    free = runtime.freeMemory();
	    used = total - free;
	    System.out.println("\nTotal Memory: " + total / mb + "MB");
	    System.out.println(" Memory Used: " + used / mb + "MB");
	    System.out.println(" Memory Free: " + free / mb + "MB");
	    System.out.println("Percent Used: " + ((int)used/(int)total)*100 + "%");
	    System.out.println("Percent Free: " + ((int)free/(int)total)*100 + "%");
	    bytes = null;
	    
        runtime.gc();
	}
	
	public static void cpuUtil(){
		long start = System.nanoTime();
        // log(start);
        //number of available processors;
         int cpuCount = ManagementFactory.getOperatingSystemMXBean().getAvailableProcessors();
         Random random = new Random(start);
         int seed = Math.abs(random.nextInt());
         
         int primes = 10000;
         //
         long startCPUTime = ManagementFactory.getThreadMXBean().getCurrentThreadCpuTime();
         start = System.nanoTime();
         while(primes != 0)
         {
            if(isPrime(seed))
            {
                primes--;
            }
            seed++;

        }
         float cpuPercent = calcCPU(startCPUTime, start, cpuCount);
         


         try
         {
             Thread.sleep(1000);
         }
         catch (InterruptedException e) {}
	}
	static boolean isPrime(int n){
	    if (n <= 2){
	        return n == 2;
	    }
	    if (n % 2 == 0){
	        return false;
	    }
	
	    for (int i = 3, end = (int)Math.sqrt(n); i <= end; i += 2){
	 	   if (n % i == 0){
	 		   return false;
	 	   }
	    }
	    return true;
	}
	
	public static int calcCPU(long cpuStartTime, long elapsedStartTime, int cpuCount){
        long end = System.nanoTime();
        long totalAvailCPUTime = cpuCount * (end-elapsedStartTime);
        long totalUsedCPUTime = ManagementFactory.getThreadMXBean().getCurrentThreadCpuTime()-cpuStartTime;
        float per = ((float)totalUsedCPUTime*100)/(float)totalAvailCPUTime;
        return (int)per;
   }
}
