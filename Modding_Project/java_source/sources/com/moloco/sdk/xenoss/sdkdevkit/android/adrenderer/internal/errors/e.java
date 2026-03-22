package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class e {

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f33996a;

        static {
            int[] iArr = new int[d.values().length];
            try {
                iArr[d.f33980a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[d.f33981b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[d.f33982c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[d.f33983d.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[d.f33984e.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[d.f33985f.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[d.f33986g.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[d.f33987h.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[d.f33988i.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[d.f33989j.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[d.f33990k.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[d.f33991l.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[d.f33992m.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[d.f33993n.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            f33996a = iArr;
        }
    }

    @NotNull
    public static final d a(@NotNull d dVar) {
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        switch (a.f33996a[dVar.ordinal()]) {
            case 1:
                return d.f33990k;
            case 2:
                return d.f33991l;
            case 3:
                return d.f33992m;
            case 4:
                return d.f33993n;
            case 5:
                return d.f33984e;
            case 6:
                return d.f33990k;
            case 7:
                return d.f33991l;
            case 8:
                return d.f33992m;
            case 9:
                return d.f33993n;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                return dVar;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @NotNull
    public static final d b(@NotNull d dVar) {
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        switch (a.f33996a[dVar.ordinal()]) {
            case 1:
                return d.f33985f;
            case 2:
                return d.f33986g;
            case 3:
                return d.f33987h;
            case 4:
                return d.f33988i;
            case 5:
                return d.f33984e;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                return dVar;
            case 11:
                return d.f33985f;
            case 12:
                return d.f33986g;
            case 13:
                return d.f33987h;
            case 14:
                return d.f33988i;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
