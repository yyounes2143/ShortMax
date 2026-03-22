package com.moloco.sdk.internal.publisher;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nAdCreatorConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdCreatorConfiguration.kt\ncom/moloco/sdk/internal/publisher/AdCreatorConfiguration\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,30:1\n9326#2,2:31\n9476#2,4:33\n*S KotlinDebug\n*F\n+ 1 AdCreatorConfiguration.kt\ncom/moloco/sdk/internal/publisher/AdCreatorConfiguration\n*L\n21#1:31,2\n21#1:33,4\n*E\n"})
/* loaded from: classes6.dex */
public final class x {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Map<s, kotlin.time.b> f33047a;

    /* renamed from: b  reason: collision with root package name */
    public final long f33048b;

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f33049a;

        static {
            int[] iArr = new int[s.values().length];
            try {
                iArr[s.f32954a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[s.f32955b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[s.f32956c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[s.f32959f.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[s.f32960g.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[s.f32958e.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[s.f32957d.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f33049a = iArr;
        }
    }

    public /* synthetic */ x(Map map, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(map, j10);
    }

    @NotNull
    public final Map<s, kotlin.time.b> a() {
        return this.f33047a;
    }

    public final long b() {
        return this.f33048b;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        if (Intrinsics.areEqual(this.f33047a, xVar.f33047a) && kotlin.time.b.l(this.f33048b, xVar.f33048b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f33047a.hashCode() * 31) + kotlin.time.b.y(this.f33048b);
    }

    @NotNull
    public String toString() {
        return "AdCreatorConfiguration(adTimeouts=" + this.f33047a + ", defaultTimeoutDuration=" + ((Object) kotlin.time.b.K(this.f33048b)) + ')';
    }

    public x(Map<s, kotlin.time.b> adTimeouts, long j10) {
        Intrinsics.checkNotNullParameter(adTimeouts, "adTimeouts");
        this.f33047a = adTimeouts;
        this.f33048b = j10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ x(java.util.Map r7, long r8, int r10, kotlin.jvm.internal.DefaultConstructorMarker r11) {
        /*
            r6 = this;
            r11 = r10 & 1
            r0 = 5
            if (r11 == 0) goto L4a
            com.moloco.sdk.internal.publisher.s[] r7 = com.moloco.sdk.internal.publisher.s.values()
            java.util.LinkedHashMap r11 = new java.util.LinkedHashMap
            int r1 = r7.length
            int r1 = kotlin.collections.p0.e(r1)
            r2 = 16
            int r1 = kotlin.ranges.e.e(r1, r2)
            r11.<init>(r1)
            int r1 = r7.length
            r2 = 0
        L1b:
            if (r2 >= r1) goto L49
            r3 = r7[r2]
            int[] r4 = com.moloco.sdk.internal.publisher.x.a.f33049a
            int r5 = r3.ordinal()
            r4 = r4[r5]
            switch(r4) {
                case 1: goto L39;
                case 2: goto L39;
                case 3: goto L39;
                case 4: goto L30;
                case 5: goto L30;
                case 6: goto L30;
                case 7: goto L30;
                default: goto L2a;
            }
        L2a:
            kotlin.NoWhenBranchMatchedException r7 = new kotlin.NoWhenBranchMatchedException
            r7.<init>()
            throw r7
        L30:
            kotlin.time.DurationUnit r4 = kotlin.time.DurationUnit.SECONDS
            r5 = 15
            long r4 = kotlin.time.c.s(r5, r4)
            goto L3f
        L39:
            kotlin.time.DurationUnit r4 = kotlin.time.DurationUnit.SECONDS
            long r4 = kotlin.time.c.s(r0, r4)
        L3f:
            kotlin.time.b r4 = kotlin.time.b.g(r4)
            r11.put(r3, r4)
            int r2 = r2 + 1
            goto L1b
        L49:
            r7 = r11
        L4a:
            r10 = r10 & 2
            if (r10 == 0) goto L54
            kotlin.time.DurationUnit r8 = kotlin.time.DurationUnit.SECONDS
            long r8 = kotlin.time.c.s(r0, r8)
        L54:
            r10 = 0
            r6.<init>(r7, r8, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.publisher.x.<init>(java.util.Map, long, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
