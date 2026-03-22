package com.ss.ttvideoengine.source;

import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.source.Source;
import com.ss.ttvideoengine.strategy.source.StrategySource;
/* loaded from: classes6.dex */
public class VideoModelSource implements StrategySource {
    private final Resolution resolution;
    private final Object tag;
    private final String vid;
    private final IVideoModel videoModel;

    /* loaded from: classes6.dex */
    public static class Builder {
        private Resolution resolution;
        private Object tag;
        private String vid;
        private IVideoModel videoModel;

        public VideoModelSource build() {
            return new VideoModelSource(this);
        }

        public Builder setResolution(Resolution resolution) {
            this.resolution = resolution;
            return this;
        }

        public Builder setTag(Object obj) {
            this.tag = obj;
            return this;
        }

        public Builder setVid(String str) {
            this.vid = str;
            return this;
        }

        public Builder setVideoModel(IVideoModel iVideoModel) {
            this.videoModel = iVideoModel;
            return this;
        }
    }

    @Override // com.ss.ttvideoengine.source.Source
    public int codecStrategy() {
        return 0;
    }

    public Resolution resolution() {
        return this.resolution;
    }

    @Override // com.ss.ttvideoengine.source.Source
    public Object tag() {
        return this.tag;
    }

    public String toString() {
        return "VideoModelSource{vid='" + this.vid + "', videoModel=" + this.videoModel + ", resolution=" + this.resolution + '}';
    }

    @Override // com.ss.ttvideoengine.source.Source
    public Source.Type type() {
        return Source.Type.VIDEO_MODEL_SOURCE;
    }

    @Override // com.ss.ttvideoengine.source.Source
    public String vid() {
        return this.vid;
    }

    public IVideoModel videoModel() {
        return this.videoModel;
    }

    private VideoModelSource(Builder builder) {
        this.vid = builder.vid;
        this.videoModel = builder.videoModel;
        this.resolution = builder.resolution;
        this.tag = builder.tag;
    }
}
