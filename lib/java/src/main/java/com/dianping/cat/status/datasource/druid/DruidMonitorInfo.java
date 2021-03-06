package com.dianping.cat.status.datasource.druid;

import lombok.Data;

@Data
public class DruidMonitorInfo {
    private String jdbcUrl;
    private int activeCount;
    private int poolingCount;
    private int maxActive;
    private int maxIdle;
    private int maxOpenPreparedStatements;
    private int maxPoolPreparedStatementPerConnectionSize;
    private long maxWait;
    private int maxWaitThreadCount;
    private int minIdle;
    private int queryTimeout;
    private int notEmptyWaitThreadCount;
    private int waitThreadCount;
    private long notEmptyWaitCount;
    private long notEmptyWaitMillis;
    private long startTransactionCount;
    private long recycleCount;
    private long rollbackCount;
    private long closeCount;
    private long closedPreparedStatementCount;
    private long commitCount;
    private long connectCount;
    private long connectErrorCount;
    private long createCount;
    private long createErrorCount;
    private long destroyCount;
    private long discardCount;
    private long dupCloseCount;
    private long errorCount;
    private long initialSize;
    private int lockQueueLength;
    private long createTimeSpanMillis;
    private long removeAbandonedCount;

    long getAvgCreateTimeSpanMillis() {
        if (createCount > 0) {
            return createTimeSpanMillis / createCount;
        } else {
            return 0;
        }
    }

    long getAvgNotEmptyWaitMillis() {
        if (notEmptyWaitCount > 0) {
            return notEmptyWaitMillis / notEmptyWaitCount;
        } else {
            return 0;
        }
    }

    @Override
    public String toString() {
        return "DruidMonitorInfo [jdbcUrl=" + jdbcUrl + ", activeCount=" + activeCount + ", poolingCount="
                + poolingCount + ", maxActive=" + maxActive + ", maxIdle=" + maxIdle
                + ", maxOpenPreparedStatements=" + maxOpenPreparedStatements
                + ", maxPoolPreparedStatementPerConnectionSize=" + maxPoolPreparedStatementPerConnectionSize
                + ", maxWait=" + maxWait + ", maxWaitThreadCount=" + maxWaitThreadCount + ", minIdle="
                + minIdle + ", queryTimeout=" + queryTimeout + ", notEmptyWaitThreadCount="
                + notEmptyWaitThreadCount + ", waitThreadCount=" + waitThreadCount + ", notEmptyWaitCount="
                + notEmptyWaitCount + ", notEmptyWaitMillis=" + notEmptyWaitMillis + ", startTransactionCount="
                + startTransactionCount + ", recycleCount=" + recycleCount + ", rollbackCount=" + rollbackCount
                + ", closeCount=" + closeCount + ", closedPreparedStatementCount=" + closedPreparedStatementCount
                + ", commitCount=" + commitCount + ", connectCount=" + connectCount + ", connectErrorCount="
                + connectErrorCount + ", createCount=" + createCount + ", createErrorCount=" + createErrorCount
                + ", destroyCount=" + destroyCount + ", discardCount=" + discardCount + ", dupCloseCount="
                + dupCloseCount + ", errorCount=" + errorCount + ", initialSize=" + initialSize
                + ", lockQueueLength=" + lockQueueLength + ", createTimeSpanMillis=" + createTimeSpanMillis
                + ", removeAbandonedCount=" + removeAbandonedCount + "]";
    }

}
