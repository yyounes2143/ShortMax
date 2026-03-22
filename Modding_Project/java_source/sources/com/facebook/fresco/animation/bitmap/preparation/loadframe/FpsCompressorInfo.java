package com.facebook.fresco.animation.bitmap.preparation.loadframe;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import o2.a;
import org.jetbrains.annotations.NotNull;
/* compiled from: FpsCompressorInfo.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFpsCompressorInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FpsCompressorInfo.kt\ncom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,113:1\n1279#2,2:114\n1293#2,4:116\n216#3,2:120\n*S KotlinDebug\n*F\n+ 1 FpsCompressorInfo.kt\ncom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo\n*L\n44#1:114,2\n44#1:116,4\n67#1:120,2\n*E\n"})
/* loaded from: classes3.dex */
public final class FpsCompressorInfo {
    private final int maxFpsLimit;

    /* compiled from: FpsCompressorInfo.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class CompressionResult {
        @NotNull
        private final Map<Integer, a<Bitmap>> compressedAnim;
        @NotNull
        private final Map<Integer, Integer> realToReducedIndex;
        @NotNull
        private final List<a<Bitmap>> removedFrames;

        /* JADX WARN: Multi-variable type inference failed */
        public CompressionResult(@NotNull Map<Integer, ? extends a<Bitmap>> compressedAnim, @NotNull Map<Integer, Integer> realToReducedIndex, @NotNull List<? extends a<Bitmap>> removedFrames) {
            Intrinsics.checkNotNullParameter(compressedAnim, "compressedAnim");
            Intrinsics.checkNotNullParameter(realToReducedIndex, "realToReducedIndex");
            Intrinsics.checkNotNullParameter(removedFrames, "removedFrames");
            this.compressedAnim = compressedAnim;
            this.realToReducedIndex = realToReducedIndex;
            this.removedFrames = removedFrames;
        }

        @NotNull
        public final Map<Integer, a<Bitmap>> getCompressedAnim() {
            return this.compressedAnim;
        }

        @NotNull
        public final Map<Integer, Integer> getRealToReducedIndex() {
            return this.realToReducedIndex;
        }

        @NotNull
        public final List<a<Bitmap>> getRemovedFrames() {
            return this.removedFrames;
        }
    }

    public FpsCompressorInfo(int i10) {
        this.maxFpsLimit = i10;
    }

    private final CompressionResult compressAnimation(Map<Integer, ? extends a<Bitmap>> map, Map<Integer, Integer> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, ? extends a<Bitmap>> entry : map.entrySet()) {
            int intValue = entry.getKey().intValue();
            a<Bitmap> value = entry.getValue();
            Integer num = map2.get(Integer.valueOf(intValue));
            if (num != null) {
                if (linkedHashMap.containsKey(num)) {
                    arrayList.add(value);
                } else {
                    linkedHashMap.put(num, value);
                }
            }
        }
        return new CompressionResult(linkedHashMap, map2, arrayList);
    }

    @NotNull
    public final Map<Integer, Integer> calculateReducedIndexes(int i10, int i11, int i12) {
        float d10 = e.d(e.j(e.e(i12, 1), this.maxFpsLimit) * millisecondsToSeconds(i10), 0.0f);
        float f10 = i11;
        float i13 = f10 / e.i(d10, f10);
        int i14 = 0;
        IntRange v10 = e.v(0, i11);
        LinkedHashMap linkedHashMap = new LinkedHashMap(e.e(p0.e(CollectionsKt.z(v10, 10)), 16));
        for (Integer num : v10) {
            int intValue = num.intValue();
            if (((int) (intValue % i13)) == 0) {
                i14 = intValue;
            }
            linkedHashMap.put(num, Integer.valueOf(i14));
        }
        return linkedHashMap;
    }

    @NotNull
    public final CompressionResult compress(int i10, @NotNull Map<Integer, ? extends a<Bitmap>> frameBitmaps, int i11) {
        Intrinsics.checkNotNullParameter(frameBitmaps, "frameBitmaps");
        return compressAnimation(frameBitmaps, calculateReducedIndexes(i10, frameBitmaps.size(), i11));
    }

    public final float millisecondsToSeconds(int i10) {
        return i10 / 1000.0f;
    }
}
