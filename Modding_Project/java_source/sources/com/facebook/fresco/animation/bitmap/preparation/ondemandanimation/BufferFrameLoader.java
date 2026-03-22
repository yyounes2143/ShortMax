package com.facebook.fresco.animation.bitmap.preparation.ondemandanimation;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import com.facebook.fresco.animation.backend.AnimationInformation;
import com.facebook.fresco.animation.bitmap.BitmapFrameRenderer;
import com.facebook.fresco.animation.bitmap.preparation.loadframe.AnimationLoaderExecutor;
import com.facebook.fresco.animation.bitmap.preparation.loadframe.FpsCompressorInfo;
import com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoader;
import com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameResult;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferFrameLoader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBufferFrameLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferFrameLoader.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,252:1\n1#2:253\n1863#3,2:254\n774#3:256\n865#3,2:257\n1863#3,2:259\n1863#3,2:261\n1863#3,2:263\n*S KotlinDebug\n*F\n+ 1 BufferFrameLoader.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/BufferFrameLoader\n*L\n109#1:254,2\n137#1:256\n137#1:257,2\n144#1:259,2\n198#1:261,2\n204#1:263,2\n*E\n"})
/* loaded from: classes3.dex */
public final class BufferFrameLoader implements FrameLoader {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float THRESHOLD_PERCENTAGE = 0.5f;
    @NotNull
    private final AnimationInformation animationInformation;
    @NotNull
    private final BitmapFrameRenderer bitmapFrameRenderer;
    @NotNull
    private final ConcurrentHashMap<Integer, BufferFrame> bufferFramesHash;
    private final int bufferLengthMilliseconds;
    private final int bufferSize;
    @NotNull
    private Map<Integer, Integer> compressionFrameMap;
    @NotNull
    private final FpsCompressorInfo fpsCompressor;
    @NotNull
    private final CircularList frameSequence;
    private volatile boolean isFetching;
    private int lastRenderedFrameNumber;
    @NotNull
    private final q3.d platformBitmapFactory;
    @NotNull
    private Set<Integer> renderableFrameIndexes;
    private volatile int thresholdFrame;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BufferFrameLoader.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class BufferFrame {
        @NotNull
        private final o2.a<Bitmap> bitmapRef;
        private boolean isUpdatingFrame;

        public BufferFrame(@NotNull o2.a<Bitmap> bitmapRef) {
            Intrinsics.checkNotNullParameter(bitmapRef, "bitmapRef");
            this.bitmapRef = bitmapRef;
        }

        @NotNull
        public final o2.a<Bitmap> getBitmapRef() {
            return this.bitmapRef;
        }

        public final boolean isFrameAvailable() {
            if (!this.isUpdatingFrame && this.bitmapRef.u()) {
                return true;
            }
            return false;
        }

        public final boolean isUpdatingFrame() {
            return this.isUpdatingFrame;
        }

        public final void release() {
            o2.a.r(this.bitmapRef);
        }

        public final void setUpdatingFrame(boolean z10) {
            this.isUpdatingFrame = z10;
        }
    }

    /* compiled from: BufferFrameLoader.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public BufferFrameLoader(@NotNull q3.d platformBitmapFactory, @NotNull BitmapFrameRenderer bitmapFrameRenderer, @NotNull FpsCompressorInfo fpsCompressor, @NotNull AnimationInformation animationInformation, int i10) {
        Intrinsics.checkNotNullParameter(platformBitmapFactory, "platformBitmapFactory");
        Intrinsics.checkNotNullParameter(bitmapFrameRenderer, "bitmapFrameRenderer");
        Intrinsics.checkNotNullParameter(fpsCompressor, "fpsCompressor");
        Intrinsics.checkNotNullParameter(animationInformation, "animationInformation");
        this.platformBitmapFactory = platformBitmapFactory;
        this.bitmapFrameRenderer = bitmapFrameRenderer;
        this.fpsCompressor = fpsCompressor;
        this.animationInformation = animationInformation;
        this.bufferLengthMilliseconds = i10;
        int e10 = e.e((fps(getAnimationInformation()) * i10) / 1000, 1);
        this.bufferSize = e10;
        this.bufferFramesHash = new ConcurrentHashMap<>();
        this.frameSequence = new CircularList(getAnimationInformation().getFrameCount());
        this.lastRenderedFrameNumber = -1;
        this.compressionFrameMap = p0.i();
        this.renderableFrameIndexes = y0.f();
        compressToFps(fps(getAnimationInformation()));
        this.thresholdFrame = (int) (e10 * 0.5f);
    }

    @WorkerThread
    private final boolean extractDemandedFrame(int i10, int i11, int i12, int i13) {
        int intValue;
        o2.a<Bitmap> aVar;
        o2.a<Bitmap> bitmapRef;
        ArrayList<Number> arrayList = new ArrayList();
        for (Object obj : this.frameSequence.sublist(i10, this.bufferSize)) {
            if (this.renderableFrameIndexes.contains(Integer.valueOf(((Number) obj).intValue()))) {
                arrayList.add(obj);
            }
        }
        Set i14 = CollectionsKt.i1(arrayList);
        Set<Integer> keySet = this.bufferFramesHash.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "<get-keys>(...)");
        ArrayDeque arrayDeque = new ArrayDeque(y0.k(keySet, i14));
        for (Number number : arrayList) {
            int intValue2 = number.intValue();
            if (this.bufferFramesHash.get(Integer.valueOf(intValue2)) == null) {
                int i15 = this.lastRenderedFrameNumber;
                int i16 = -1;
                if (i15 != -1 && !i14.contains(Integer.valueOf(i15))) {
                    return false;
                }
                Integer num = (Integer) arrayDeque.pollFirst();
                if (num != null) {
                    i16 = num.intValue();
                }
                BufferFrame bufferFrame = this.bufferFramesHash.get(Integer.valueOf(i16));
                if (bufferFrame != null && (bitmapRef = bufferFrame.getBitmapRef()) != null) {
                    aVar = bitmapRef.o();
                } else {
                    aVar = null;
                }
                if (aVar == null) {
                    o2.a<Bitmap> a10 = this.platformBitmapFactory.a(i11, i12);
                    Intrinsics.checkNotNullExpressionValue(a10, "createBitmap(...)");
                    bufferFrame = new BufferFrame(a10);
                    aVar = bufferFrame.getBitmapRef().clone();
                }
                bufferFrame.setUpdatingFrame(true);
                try {
                    obtainFrame(aVar, intValue2, i11, i12);
                    Unit unit = Unit.f60915a;
                    ws.b.a(aVar, null);
                    this.bufferFramesHash.remove(Integer.valueOf(i16));
                    bufferFrame.setUpdatingFrame(false);
                    this.bufferFramesHash.put(Integer.valueOf(intValue2), bufferFrame);
                } finally {
                }
            }
        }
        if (arrayList.isEmpty()) {
            intValue = (int) (this.bufferSize * 0.5f);
        } else {
            int size = arrayList.size();
            intValue = ((Number) arrayList.get(e.n((int) (size * 0.5f), 0, size - 1))).intValue();
        }
        this.thresholdFrame = intValue;
        return true;
    }

    static /* synthetic */ boolean extractDemandedFrame$default(BufferFrameLoader bufferFrameLoader, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 8) != 0) {
            i13 = 0;
        }
        return bufferFrameLoader.extractDemandedFrame(i10, i11, i12, i13);
    }

    private final AnimationBitmapFrame findNearestFrame(int i10) {
        AnimationBitmapFrame animationBitmapFrame;
        Iterator<Integer> it = new IntRange(0, this.frameSequence.getSize()).iterator();
        do {
            animationBitmapFrame = null;
            if (!it.hasNext()) {
                break;
            }
            int position = this.frameSequence.getPosition(i10 - ((m0) it).nextInt());
            BufferFrame bufferFrame = this.bufferFramesHash.get(Integer.valueOf(position));
            if (bufferFrame != null) {
                if (!bufferFrame.isFrameAvailable()) {
                    bufferFrame = null;
                }
                if (bufferFrame != null) {
                    animationBitmapFrame = new AnimationBitmapFrame(position, bufferFrame.getBitmapRef());
                    continue;
                } else {
                    continue;
                }
            }
        } while (animationBitmapFrame == null);
        return animationBitmapFrame;
    }

    @UiThread
    private final FrameResult findNearestToRender(int i10) {
        AnimationBitmapFrame findNearestFrame = findNearestFrame(i10);
        if (findNearestFrame != null) {
            o2.a<Bitmap> clone = findNearestFrame.getBitmap().clone();
            Intrinsics.checkNotNullExpressionValue(clone, "clone(...)");
            this.lastRenderedFrameNumber = findNearestFrame.getFrameNumber();
            return new FrameResult(clone, FrameResult.FrameType.NEAREST);
        }
        return new FrameResult(null, FrameResult.FrameType.MISSING);
    }

    private final int fps(AnimationInformation animationInformation) {
        return (int) e.f(TimeUnit.SECONDS.toMillis(1L) / (animationInformation.getLoopDurationMs() / animationInformation.getFrameCount()), 1L);
    }

    private final void loadNextFrames(final int i10, final int i11) {
        if (this.isFetching) {
            return;
        }
        this.isFetching = true;
        AnimationLoaderExecutor.INSTANCE.execute(new Runnable() { // from class: com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.d
            @Override // java.lang.Runnable
            public final void run() {
                BufferFrameLoader.loadNextFrames$lambda$2(BufferFrameLoader.this, i10, i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadNextFrames$lambda$2(BufferFrameLoader this$0, int i10, int i11) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        do {
        } while (!extractDemandedFrame$default(this$0, e.e(this$0.lastRenderedFrameNumber, 0), i10, i11, 0, 8, null));
        this$0.isFetching = false;
    }

    private final void obtainFrame(o2.a<Bitmap> aVar, int i10, int i11, int i12) {
        o2.a<Bitmap> bitmap;
        o2.a<Bitmap> o10;
        AnimationBitmapFrame findNearestFrame = findNearestFrame(i10);
        if (findNearestFrame != null && (bitmap = findNearestFrame.getBitmap()) != null && (o10 = bitmap.o()) != null) {
            try {
                int frameNumber = findNearestFrame.getFrameNumber();
                if (frameNumber < i10) {
                    Bitmap s10 = o10.s();
                    Intrinsics.checkNotNullExpressionValue(s10, "get(...)");
                    set(aVar, s10);
                    Iterator<Integer> it = new IntRange(frameNumber + 1, i10).iterator();
                    while (it.hasNext()) {
                        int nextInt = ((m0) it).nextInt();
                        BitmapFrameRenderer bitmapFrameRenderer = this.bitmapFrameRenderer;
                        Bitmap s11 = aVar.s();
                        Intrinsics.checkNotNullExpressionValue(s11, "get(...)");
                        bitmapFrameRenderer.renderFrame(nextInt, s11);
                    }
                    ws.b.a(o10, null);
                    return;
                }
                Unit unit = Unit.f60915a;
                ws.b.a(o10, null);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    ws.b.a(o10, th2);
                    throw th3;
                }
            }
        }
        clear(aVar);
        Iterator<Integer> it2 = new IntRange(0, i10).iterator();
        while (it2.hasNext()) {
            int nextInt2 = ((m0) it2).nextInt();
            BitmapFrameRenderer bitmapFrameRenderer2 = this.bitmapFrameRenderer;
            Bitmap s12 = aVar.s();
            Intrinsics.checkNotNullExpressionValue(s12, "get(...)");
            bitmapFrameRenderer2.renderFrame(nextInt2, s12);
        }
    }

    private final o2.a<Bitmap> set(o2.a<Bitmap> aVar, Bitmap bitmap) {
        if (aVar.u() && !Intrinsics.areEqual(aVar.s(), bitmap)) {
            Canvas canvas = new Canvas(aVar.s());
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
        return aVar;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoader
    public void clear() {
        Collection<BufferFrame> values = this.bufferFramesHash.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        for (BufferFrame bufferFrame : values) {
            bufferFrame.release();
        }
        this.bufferFramesHash.clear();
        this.lastRenderedFrameNumber = -1;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoader
    public void compressToFps(int i10) {
        Map<Integer, Integer> calculateReducedIndexes = this.fpsCompressor.calculateReducedIndexes(getAnimationInformation().getLoopDurationMs() * e.e(getAnimationInformation().getLoopCount(), 1), getAnimationInformation().getFrameCount(), e.j(i10, fps(getAnimationInformation())));
        this.compressionFrameMap = calculateReducedIndexes;
        this.renderableFrameIndexes = CollectionsKt.i1(calculateReducedIndexes.values());
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoader
    @NotNull
    public AnimationInformation getAnimationInformation() {
        return this.animationInformation;
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoader
    @UiThread
    @NotNull
    public FrameResult getFrame(int i10, int i11, int i12) {
        Integer num = this.compressionFrameMap.get(Integer.valueOf(i10));
        if (num != null) {
            int intValue = num.intValue();
            this.lastRenderedFrameNumber = intValue;
            BufferFrame bufferFrame = this.bufferFramesHash.get(num);
            if (bufferFrame == null || !bufferFrame.isFrameAvailable()) {
                bufferFrame = null;
            }
            if (bufferFrame != null) {
                if (this.frameSequence.isTargetAhead(this.thresholdFrame, intValue, this.bufferSize)) {
                    loadNextFrames(i11, i12);
                }
                return new FrameResult(bufferFrame.getBitmapRef().clone(), FrameResult.FrameType.SUCCESS);
            }
            loadNextFrames(i11, i12);
            return findNearestToRender(intValue);
        }
        return findNearestToRender(i10);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoader
    public void onStop() {
        FrameLoader.DefaultImpls.onStop(this);
    }

    @Override // com.facebook.fresco.animation.bitmap.preparation.ondemandanimation.FrameLoader
    @UiThread
    public void prepareFrames(int i10, int i11, @NotNull Function0<Unit> onAnimationLoaded) {
        Intrinsics.checkNotNullParameter(onAnimationLoaded, "onAnimationLoaded");
        loadNextFrames(i10, i11);
        onAnimationLoaded.invoke();
    }

    private final void clear(o2.a<Bitmap> aVar) {
        if (aVar.u()) {
            new Canvas(aVar.s()).drawColor(0, PorterDuff.Mode.CLEAR);
        }
    }
}
