package io.bidmachine.rendering.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.k;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public enum BrokenCreativeAlgorithmType implements k {
    ColorHistogram("color_histogram"),
    BrightnessVariance("brightness_variance"),
    EdgeDetection("edge_detection");
    
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f58528a;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final BrokenCreativeAlgorithmType a(@Nullable String str) {
            return (BrokenCreativeAlgorithmType) s.k(BrokenCreativeAlgorithmType.values(), str);
        }

        private a() {
        }
    }

    BrokenCreativeAlgorithmType(String str) {
        this.f58528a = str;
    }

    @Nullable
    public static final BrokenCreativeAlgorithmType get(@Nullable String str) {
        return Companion.a(str);
    }

    @Override // yq.k
    @NotNull
    public String getKey() {
        return this.f58528a;
    }
}
