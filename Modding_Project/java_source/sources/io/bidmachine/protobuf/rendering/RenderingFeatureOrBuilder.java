package io.bidmachine.protobuf.rendering;

import com.explorestack.protobuf.MessageLite;
import com.explorestack.protobuf.MessageOrBuilder;
import io.bidmachine.protobuf.rendering.RenderingFeature;
/* loaded from: classes8.dex */
public interface RenderingFeatureOrBuilder extends MessageOrBuilder {
    RenderingFeature.BrokenCreativeDetector getBrokenCreativeDetector();

    RenderingFeature.BrokenCreativeDetectorOrBuilder getBrokenCreativeDetectorOrBuilder();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* renamed from: getDefaultInstanceForType */
    /* synthetic */ MessageLite mo4630getDefaultInstanceForType();

    RenderingFeature.FeatureCase getFeatureCase();

    boolean hasBrokenCreativeDetector();

    @Override // com.explorestack.protobuf.MessageOrBuilder
    /* synthetic */ boolean isInitialized();
}
