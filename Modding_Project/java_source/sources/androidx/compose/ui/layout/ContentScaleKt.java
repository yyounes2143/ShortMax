package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Size;
import kotlin.Metadata;
/* compiled from: ContentScale.kt */
@Metadata
/* loaded from: classes.dex */
public final class ContentScaleKt {
    /* renamed from: access$computeFillHeight-iLBOSCw  reason: not valid java name */
    public static final /* synthetic */ float m3327access$computeFillHeightiLBOSCw(long j10, long j11) {
        return m3331computeFillHeightiLBOSCw(j10, j11);
    }

    /* renamed from: access$computeFillMaxDimension-iLBOSCw  reason: not valid java name */
    public static final /* synthetic */ float m3328access$computeFillMaxDimensioniLBOSCw(long j10, long j11) {
        return m3332computeFillMaxDimensioniLBOSCw(j10, j11);
    }

    /* renamed from: access$computeFillMinDimension-iLBOSCw  reason: not valid java name */
    public static final /* synthetic */ float m3329access$computeFillMinDimensioniLBOSCw(long j10, long j11) {
        return m3333computeFillMinDimensioniLBOSCw(j10, j11);
    }

    /* renamed from: access$computeFillWidth-iLBOSCw  reason: not valid java name */
    public static final /* synthetic */ float m3330access$computeFillWidthiLBOSCw(long j10, long j11) {
        return m3334computeFillWidthiLBOSCw(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: computeFillHeight-iLBOSCw  reason: not valid java name */
    public static final float m3331computeFillHeightiLBOSCw(long j10, long j11) {
        return Size.m1672getHeightimpl(j11) / Size.m1672getHeightimpl(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: computeFillMaxDimension-iLBOSCw  reason: not valid java name */
    public static final float m3332computeFillMaxDimensioniLBOSCw(long j10, long j11) {
        return Math.max(m3334computeFillWidthiLBOSCw(j10, j11), m3331computeFillHeightiLBOSCw(j10, j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: computeFillMinDimension-iLBOSCw  reason: not valid java name */
    public static final float m3333computeFillMinDimensioniLBOSCw(long j10, long j11) {
        return Math.min(m3334computeFillWidthiLBOSCw(j10, j11), m3331computeFillHeightiLBOSCw(j10, j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: computeFillWidth-iLBOSCw  reason: not valid java name */
    public static final float m3334computeFillWidthiLBOSCw(long j10, long j11) {
        return Size.m1675getWidthimpl(j11) / Size.m1675getWidthimpl(j10);
    }
}
