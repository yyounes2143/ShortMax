package x2;

import androidx.annotation.VisibleForTesting;
import c3.g0;
import com.facebook.fresco.ui.common.BaseControllerListener2;
import com.facebook.fresco.ui.common.ControllerListener2;
import com.facebook.fresco.ui.common.DimensionsInfo;
import com.facebook.fresco.ui.common.ImageLoadStatus;
import com.facebook.fresco.ui.common.ImagePerfNotifier;
import com.facebook.fresco.ui.common.ImagePerfNotifierHolder;
import com.facebook.fresco.ui.common.ImagePerfState;
import com.facebook.fresco.ui.common.OnDrawControllerListener;
import com.facebook.fresco.ui.common.VisibilityAware;
import com.facebook.fresco.ui.common.VisibilityState;
import java.io.Closeable;
import y3.m;
/* compiled from: ImagePerfStateManager.java */
/* loaded from: classes3.dex */
public class b extends BaseControllerListener2<m> implements ImagePerfNotifierHolder, OnDrawControllerListener<m>, Closeable, VisibilityAware, g0 {

    /* renamed from: a  reason: collision with root package name */
    private final q2.b f70395a;

    /* renamed from: b  reason: collision with root package name */
    private final ImagePerfState f70396b;

    /* renamed from: c  reason: collision with root package name */
    private final ImagePerfNotifier f70397c;

    /* renamed from: d  reason: collision with root package name */
    private ImagePerfNotifier f70398d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f70399e;

    public b(q2.b bVar, ImagePerfState imagePerfState, ImagePerfNotifier imagePerfNotifier) {
        this(bVar, imagePerfState, imagePerfNotifier, true);
    }

    @VisibleForTesting
    private void g(ImagePerfState imagePerfState, long j10) {
        imagePerfState.setVisible(false);
        imagePerfState.setInvisibilityEventTimeMs(j10);
        m(imagePerfState, VisibilityState.INVISIBLE);
    }

    private void l(ImagePerfState imagePerfState, ImageLoadStatus imageLoadStatus) {
        imagePerfState.setImageLoadStatus(imageLoadStatus);
        this.f70397c.notifyStatusUpdated(imagePerfState, imageLoadStatus);
        ImagePerfNotifier imagePerfNotifier = this.f70398d;
        if (imagePerfNotifier != null) {
            imagePerfNotifier.notifyStatusUpdated(imagePerfState, imageLoadStatus);
        }
    }

    private void m(ImagePerfState imagePerfState, VisibilityState visibilityState) {
        this.f70397c.notifyVisibilityUpdated(imagePerfState, visibilityState);
        ImagePerfNotifier imagePerfNotifier = this.f70398d;
        if (imagePerfNotifier != null) {
            imagePerfNotifier.notifyVisibilityUpdated(imagePerfState, visibilityState);
        }
    }

    @Override // c3.g0
    public void a(boolean z10) {
        if (z10) {
            i(this.f70396b, this.f70395a.now());
        } else {
            g(this.f70396b, this.f70395a.now());
        }
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    /* renamed from: b */
    public void onFinalImageSet(String str, m mVar, ControllerListener2.Extras extras) {
        long now = this.f70395a.now();
        ImagePerfState imagePerfState = this.f70396b;
        imagePerfState.setExtraData(extras);
        imagePerfState.setControllerFinalImageSetTimeMs(now);
        imagePerfState.setImageRequestEndTimeMs(now);
        imagePerfState.setControllerId(str);
        imagePerfState.setImageInfo(mVar);
        l(imagePerfState, ImageLoadStatus.SUCCESS);
    }

    @Override // com.facebook.fresco.ui.common.OnDrawControllerListener
    /* renamed from: c */
    public void onImageDrawn(String str, m mVar, DimensionsInfo dimensionsInfo) {
        ImagePerfState imagePerfState = this.f70396b;
        imagePerfState.setControllerId(str);
        imagePerfState.setDimensionsInfo(dimensionsInfo);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        k();
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    /* renamed from: d */
    public void onIntermediateImageSet(String str, m mVar) {
        long now = this.f70395a.now();
        ImagePerfState imagePerfState = this.f70396b;
        imagePerfState.setControllerIntermediateImageSetTimeMs(now);
        imagePerfState.setControllerId(str);
        imagePerfState.setImageInfo(mVar);
        l(imagePerfState, ImageLoadStatus.INTERMEDIATE_AVAILABLE);
    }

    @VisibleForTesting
    public void i(ImagePerfState imagePerfState, long j10) {
        imagePerfState.setVisible(true);
        imagePerfState.setVisibilityEventTimeMs(j10);
        m(imagePerfState, VisibilityState.VISIBLE);
    }

    public void k() {
        this.f70396b.reset();
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onEmptyEvent(Object obj) {
        ImagePerfState imagePerfState = this.f70396b;
        ImageLoadStatus imageLoadStatus = ImageLoadStatus.EMPTY_EVENT;
        imagePerfState.setImageLoadStatus(imageLoadStatus);
        this.f70397c.notifyStatusUpdated(imagePerfState, imageLoadStatus);
        ImagePerfNotifier imagePerfNotifier = this.f70398d;
        if (imagePerfNotifier != null) {
            imagePerfNotifier.notifyStatusUpdated(imagePerfState, imageLoadStatus);
        }
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onFailure(String str, Throwable th2, ControllerListener2.Extras extras) {
        long now = this.f70395a.now();
        ImagePerfState imagePerfState = this.f70396b;
        imagePerfState.setExtraData(extras);
        imagePerfState.setControllerFailureTimeMs(now);
        imagePerfState.setControllerId(str);
        imagePerfState.setErrorThrowable(th2);
        l(imagePerfState, ImageLoadStatus.ERROR);
        g(imagePerfState, now);
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onRelease(String str, ControllerListener2.Extras extras) {
        long now = this.f70395a.now();
        ImagePerfState imagePerfState = this.f70396b;
        imagePerfState.setExtraData(extras);
        imagePerfState.setControllerId(str);
        l(imagePerfState, ImageLoadStatus.RELEASED);
        if (this.f70399e) {
            g(imagePerfState, now);
        }
    }

    @Override // com.facebook.fresco.ui.common.BaseControllerListener2, com.facebook.fresco.ui.common.ControllerListener2
    public void onSubmit(String str, Object obj, ControllerListener2.Extras extras) {
        long now = this.f70395a.now();
        ImagePerfState imagePerfState = this.f70396b;
        imagePerfState.resetPointsTimestamps();
        imagePerfState.setControllerSubmitTimeMs(now);
        imagePerfState.setControllerId(str);
        imagePerfState.setCallerContext(obj);
        imagePerfState.setExtraData(extras);
        l(imagePerfState, ImageLoadStatus.REQUESTED);
        if (this.f70399e) {
            i(imagePerfState, now);
        }
    }

    @Override // com.facebook.fresco.ui.common.VisibilityAware
    public void reportVisible(boolean z10) {
        a(z10);
    }

    @Override // com.facebook.fresco.ui.common.ImagePerfNotifierHolder
    public void setImagePerfNotifier(ImagePerfNotifier imagePerfNotifier) {
        this.f70398d = imagePerfNotifier;
    }

    public b(q2.b bVar, ImagePerfState imagePerfState, ImagePerfNotifier imagePerfNotifier, boolean z10) {
        this.f70398d = null;
        this.f70395a = bVar;
        this.f70396b = imagePerfState;
        this.f70397c = imagePerfNotifier;
        this.f70399e = z10;
    }

    @Override // c3.g0
    public void onDraw() {
    }
}
