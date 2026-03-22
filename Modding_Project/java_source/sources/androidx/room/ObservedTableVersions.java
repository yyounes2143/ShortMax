package androidx.room;

import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: InvalidationTracker.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableVersions\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,654:1\n226#2,5:655\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableVersions\n*L\n640#1:655,5\n*E\n"})
/* loaded from: classes2.dex */
public final class ObservedTableVersions {
    @NotNull
    private final kt.e<int[]> versions;

    public ObservedTableVersions(int i10) {
        this.versions = kotlinx.coroutines.flow.o.a(new int[i10]);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(@org.jetbrains.annotations.NotNull kt.c<? super int[]> r5, @org.jetbrains.annotations.NotNull rs.c<?> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof androidx.room.ObservedTableVersions$collect$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.room.ObservedTableVersions$collect$1 r0 = (androidx.room.ObservedTableVersions$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.ObservedTableVersions$collect$1 r0 = new androidx.room.ObservedTableVersions$collect$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L2d:
            kotlin.f.b(r6)
            goto L3f
        L31:
            kotlin.f.b(r6)
            kt.e<int[]> r6 = r4.versions
            r0.label = r3
            java.lang.Object r5 = r6.collect(r5, r0)
            if (r5 != r1) goto L3f
            return r1
        L3f:
            kotlin.KotlinNothingValueException r5 = new kotlin.KotlinNothingValueException
            r5.<init>()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.ObservedTableVersions.collect(kt.c, rs.c):java.lang.Object");
    }

    public final void increment(@NotNull Set<Integer> tableIds) {
        int[] value;
        int[] iArr;
        int i10;
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        if (tableIds.isEmpty()) {
            return;
        }
        kt.e<int[]> eVar = this.versions;
        do {
            value = eVar.getValue();
            int[] iArr2 = value;
            int length = iArr2.length;
            iArr = new int[length];
            for (int i11 = 0; i11 < length; i11++) {
                if (tableIds.contains(Integer.valueOf(i11))) {
                    i10 = iArr2[i11] + 1;
                } else {
                    i10 = iArr2[i11];
                }
                iArr[i11] = i10;
            }
        } while (!eVar.b(value, iArr));
    }
}
