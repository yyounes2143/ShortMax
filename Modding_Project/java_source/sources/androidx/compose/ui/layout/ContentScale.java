package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ContentScale.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public interface ContentScale {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* renamed from: computeScaleFactor-H7hwNQA  reason: not valid java name */
    long mo3326computeScaleFactorH7hwNQA(long j10, long j11);

    /* compiled from: ContentScale.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final ContentScale Crop = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$Crop$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo3326computeScaleFactorH7hwNQA(long j10, long j11) {
                float m3328access$computeFillMaxDimensioniLBOSCw = ContentScaleKt.m3328access$computeFillMaxDimensioniLBOSCw(j10, j11);
                return ScaleFactorKt.ScaleFactor(m3328access$computeFillMaxDimensioniLBOSCw, m3328access$computeFillMaxDimensioniLBOSCw);
            }
        };
        @NotNull
        private static final ContentScale Fit = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$Fit$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo3326computeScaleFactorH7hwNQA(long j10, long j11) {
                float m3329access$computeFillMinDimensioniLBOSCw = ContentScaleKt.m3329access$computeFillMinDimensioniLBOSCw(j10, j11);
                return ScaleFactorKt.ScaleFactor(m3329access$computeFillMinDimensioniLBOSCw, m3329access$computeFillMinDimensioniLBOSCw);
            }
        };
        @NotNull
        private static final ContentScale FillHeight = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$FillHeight$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo3326computeScaleFactorH7hwNQA(long j10, long j11) {
                float m3327access$computeFillHeightiLBOSCw = ContentScaleKt.m3327access$computeFillHeightiLBOSCw(j10, j11);
                return ScaleFactorKt.ScaleFactor(m3327access$computeFillHeightiLBOSCw, m3327access$computeFillHeightiLBOSCw);
            }
        };
        @NotNull
        private static final ContentScale FillWidth = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$FillWidth$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo3326computeScaleFactorH7hwNQA(long j10, long j11) {
                float m3330access$computeFillWidthiLBOSCw = ContentScaleKt.m3330access$computeFillWidthiLBOSCw(j10, j11);
                return ScaleFactorKt.ScaleFactor(m3330access$computeFillWidthiLBOSCw, m3330access$computeFillWidthiLBOSCw);
            }
        };
        @NotNull
        private static final ContentScale Inside = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$Inside$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo3326computeScaleFactorH7hwNQA(long j10, long j11) {
                if (Size.m1675getWidthimpl(j10) <= Size.m1675getWidthimpl(j11) && Size.m1672getHeightimpl(j10) <= Size.m1672getHeightimpl(j11)) {
                    return ScaleFactorKt.ScaleFactor(1.0f, 1.0f);
                }
                float m3329access$computeFillMinDimensioniLBOSCw = ContentScaleKt.m3329access$computeFillMinDimensioniLBOSCw(j10, j11);
                return ScaleFactorKt.ScaleFactor(m3329access$computeFillMinDimensioniLBOSCw, m3329access$computeFillMinDimensioniLBOSCw);
            }
        };
        @NotNull
        private static final FixedScale None = new FixedScale(1.0f);
        @NotNull
        private static final ContentScale FillBounds = new ContentScale() { // from class: androidx.compose.ui.layout.ContentScale$Companion$FillBounds$1
            @Override // androidx.compose.ui.layout.ContentScale
            /* renamed from: computeScaleFactor-H7hwNQA */
            public long mo3326computeScaleFactorH7hwNQA(long j10, long j11) {
                return ScaleFactorKt.ScaleFactor(ContentScaleKt.m3330access$computeFillWidthiLBOSCw(j10, j11), ContentScaleKt.m3327access$computeFillHeightiLBOSCw(j10, j11));
            }
        };

        private Companion() {
        }

        @NotNull
        public final ContentScale getCrop() {
            return Crop;
        }

        @NotNull
        public final ContentScale getFillBounds() {
            return FillBounds;
        }

        @NotNull
        public final ContentScale getFillHeight() {
            return FillHeight;
        }

        @NotNull
        public final ContentScale getFillWidth() {
            return FillWidth;
        }

        @NotNull
        public final ContentScale getFit() {
            return Fit;
        }

        @NotNull
        public final ContentScale getInside() {
            return Inside;
        }

        @NotNull
        public final FixedScale getNone() {
            return None;
        }

        @Stable
        public static /* synthetic */ void getCrop$annotations() {
        }

        @Stable
        public static /* synthetic */ void getFillBounds$annotations() {
        }

        @Stable
        public static /* synthetic */ void getFillHeight$annotations() {
        }

        @Stable
        public static /* synthetic */ void getFillWidth$annotations() {
        }

        @Stable
        public static /* synthetic */ void getFit$annotations() {
        }

        @Stable
        public static /* synthetic */ void getInside$annotations() {
        }

        @Stable
        public static /* synthetic */ void getNone$annotations() {
        }
    }
}
