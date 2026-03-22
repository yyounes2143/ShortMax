package com.ss.ttvideoengine.strategy.preload;
/* loaded from: classes6.dex */
public class StrategyPreloadConfig {
    public static final int DEFAULT_COUNT = 3;
    public static final int DEFAULT_COUNT_LIMIT = 10;
    public static final int DEFAULT_SIZE = 800;
    public static final int DEFAULT_START_BUFFER_LIMIT = 14;
    public static final int DEFAULT_STOP_BUFFER_LIMIT = 5;
    private final int count;
    private final int size;
    private final int startBufferLimit;
    private final int stopBufferLimit;

    public int getCount() {
        return this.count;
    }

    public int getSize() {
        return this.size;
    }

    public int getStartBufferLimit() {
        return this.startBufferLimit;
    }

    public int getStopBufferLimit() {
        return this.stopBufferLimit;
    }

    public String toString() {
        return "StrategyPreloadConfig{count=" + this.count + ", size=" + this.size + ", startBufferLimit=" + this.startBufferLimit + ", stopBufferLimit=" + this.stopBufferLimit + '}';
    }

    private StrategyPreloadConfig(Builder builder) {
        this.count = builder.count;
        this.size = builder.size;
        this.startBufferLimit = builder.startBufferLimit;
        this.stopBufferLimit = builder.stopBufferLimit;
    }

    /* loaded from: classes6.dex */
    public static class Builder {
        private int count;
        private int size;
        private int startBufferLimit;
        private int stopBufferLimit;

        public Builder() {
            this.count = 3;
            this.size = 800;
            this.startBufferLimit = 14;
            this.stopBufferLimit = 5;
        }

        public StrategyPreloadConfig build() {
            return new StrategyPreloadConfig(this);
        }

        public Builder setCount(int i10) {
            if (i10 > 0) {
                this.count = i10;
            }
            return this;
        }

        public Builder setSize(int i10) {
            if (i10 > 0) {
                this.size = i10;
            }
            return this;
        }

        public Builder setStartBufferLimit(int i10) {
            if (i10 > 0) {
                this.startBufferLimit = i10;
            }
            return this;
        }

        public Builder setStopBufferLimit(int i10) {
            if (i10 > 0) {
                this.stopBufferLimit = i10;
            }
            return this;
        }

        public Builder(StrategyPreloadConfig strategyPreloadConfig) {
            this.count = strategyPreloadConfig.getCount();
            this.size = strategyPreloadConfig.getSize();
            this.startBufferLimit = strategyPreloadConfig.getStartBufferLimit();
            this.stopBufferLimit = strategyPreloadConfig.getStopBufferLimit();
        }
    }
}
