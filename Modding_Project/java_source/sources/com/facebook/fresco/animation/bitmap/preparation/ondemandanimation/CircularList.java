package com.facebook.fresco.animation.bitmap.preparation.ondemandanimation;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: CircularList.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCircularList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularList.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1#2:31\n1557#3:32\n1628#3,3:33\n*S KotlinDebug\n*F\n+ 1 CircularList.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList\n*L\n28#1:32\n28#1:33,3\n*E\n"})
/* loaded from: classes3.dex */
public final class CircularList {
    private final int size;

    public CircularList(int i10) {
        this.size = i10;
    }

    public final int getPosition(int i10) {
        int i11 = i10 % this.size;
        Integer valueOf = Integer.valueOf(i11);
        if (valueOf.intValue() < 0) {
            valueOf = null;
        }
        if (valueOf != null) {
            return valueOf.intValue();
        }
        return i11 + this.size;
    }

    public final int getSize() {
        return this.size;
    }

    public final boolean isTargetAhead(int i10, int i11, int i12) {
        int position = getPosition(i12 + i10);
        if (i10 < position) {
            if (i10 <= i11 && i11 <= position) {
                return true;
            }
        } else if (i10 <= i11 && i11 <= this.size) {
            return true;
        } else {
            if (i11 >= 0 && i11 <= position) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final List<Integer> sublist(int i10, int i11) {
        IntRange v10 = e.v(0, i11);
        ArrayList arrayList = new ArrayList(CollectionsKt.z(v10, 10));
        Iterator<Integer> it = v10.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(getPosition(((m0) it).nextInt() + i10)));
        }
        return arrayList;
    }
}
