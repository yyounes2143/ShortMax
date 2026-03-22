package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Constraints.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Constraints {
    private static final long FocusMask = 3;
    public static final int Infinity = Integer.MAX_VALUE;
    private static final int MaxFocusBits = 18;
    private static final long MaxFocusHeight = 3;
    private static final long MaxFocusWidth = 1;
    private static final int MaxNonFocusBits = 13;
    private static final int MinFocusBits = 16;
    private static final long MinFocusHeight = 2;
    private static final int MinFocusMask = 65535;
    private static final long MinFocusWidth = 0;
    private static final int MinNonFocusBits = 15;
    private final long value;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final int[] MinHeightOffsets = {18, 20, 17, 15};
    private static final int MaxFocusMask = 262143;
    private static final int MinNonFocusMask = 32767;
    private static final int MaxNonFocusMask = 8191;
    @NotNull
    private static final int[] WidthMask = {65535, MaxFocusMask, MinNonFocusMask, MaxNonFocusMask};
    @NotNull
    private static final int[] HeightMask = {MinNonFocusMask, MaxNonFocusMask, 65535, MaxFocusMask};

    /* compiled from: Constraints.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int bitsNeedForSize(int i10) {
            if (i10 < Constraints.MaxNonFocusMask) {
                return 13;
            }
            if (i10 < Constraints.MinNonFocusMask) {
                return 15;
            }
            if (i10 < 65535) {
                return 16;
            }
            if (i10 < Constraints.MaxFocusMask) {
                return 18;
            }
            throw new IllegalArgumentException("Can't represent a size of " + i10 + " in Constraints");
        }

        /* renamed from: createConstraints-Zbe2FdA$ui_unit_release  reason: not valid java name */
        public final long m4012createConstraintsZbe2FdA$ui_unit_release(int i10, int i11, int i12, int i13) {
            int i14;
            int i15;
            long j10;
            int i16;
            if (i13 == Integer.MAX_VALUE) {
                i14 = i12;
            } else {
                i14 = i13;
            }
            int bitsNeedForSize = bitsNeedForSize(i14);
            if (i11 == Integer.MAX_VALUE) {
                i15 = i10;
            } else {
                i15 = i11;
            }
            int bitsNeedForSize2 = bitsNeedForSize(i15);
            if (bitsNeedForSize + bitsNeedForSize2 <= 31) {
                if (bitsNeedForSize2 != 13) {
                    if (bitsNeedForSize2 != 18) {
                        if (bitsNeedForSize2 != 15) {
                            if (bitsNeedForSize2 == 16) {
                                j10 = 0;
                            } else {
                                throw new IllegalStateException("Should only have the provided constants.");
                            }
                        } else {
                            j10 = 2;
                        }
                    } else {
                        j10 = 1;
                    }
                } else {
                    j10 = 3;
                }
                int i17 = 0;
                if (i11 == Integer.MAX_VALUE) {
                    i16 = 0;
                } else {
                    i16 = i11 + 1;
                }
                if (i13 != Integer.MAX_VALUE) {
                    i17 = i13 + 1;
                }
                int i18 = Constraints.MinHeightOffsets[(int) j10];
                return Constraints.m3994constructorimpl((i16 << 33) | j10 | (i10 << 2) | (i12 << i18) | (i17 << (i18 + 31)));
            }
            throw new IllegalArgumentException("Can't represent a width of " + i15 + " and height of " + i14 + " in Constraints");
        }

        @Stable
        /* renamed from: fixed-JhjzzOo  reason: not valid java name */
        public final long m4013fixedJhjzzOo(int i10, int i11) {
            if (i10 >= 0 && i11 >= 0) {
                return m4012createConstraintsZbe2FdA$ui_unit_release(i10, i10, i11, i11);
            }
            throw new IllegalArgumentException(("width(" + i10 + ") and height(" + i11 + ") must be >= 0").toString());
        }

        @Stable
        /* renamed from: fixedHeight-OenEA2s  reason: not valid java name */
        public final long m4014fixedHeightOenEA2s(int i10) {
            if (i10 >= 0) {
                return m4012createConstraintsZbe2FdA$ui_unit_release(0, Integer.MAX_VALUE, i10, i10);
            }
            throw new IllegalArgumentException(("height(" + i10 + ") must be >= 0").toString());
        }

        @Stable
        /* renamed from: fixedWidth-OenEA2s  reason: not valid java name */
        public final long m4015fixedWidthOenEA2s(int i10) {
            if (i10 >= 0) {
                return m4012createConstraintsZbe2FdA$ui_unit_release(i10, i10, 0, Integer.MAX_VALUE);
            }
            throw new IllegalArgumentException(("width(" + i10 + ") must be >= 0").toString());
        }

        private Companion() {
        }
    }

    private /* synthetic */ Constraints(long j10) {
        this.value = j10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Constraints m3993boximpl(long j10) {
        return new Constraints(j10);
    }

    /* renamed from: copy-Zbe2FdA  reason: not valid java name */
    public static final long m3995copyZbe2FdA(long j10, int i10, int i11, int i12, int i13) {
        if (i12 >= 0 && i10 >= 0) {
            if (i11 < i10 && i11 != Integer.MAX_VALUE) {
                throw new IllegalArgumentException(("maxWidth(" + i11 + ") must be >= minWidth(" + i10 + ')').toString());
            } else if (i13 < i12 && i13 != Integer.MAX_VALUE) {
                throw new IllegalArgumentException(("maxHeight(" + i13 + ") must be >= minHeight(" + i12 + ')').toString());
            } else {
                return Companion.m4012createConstraintsZbe2FdA$ui_unit_release(i10, i11, i12, i13);
            }
        }
        throw new IllegalArgumentException(("minHeight(" + i12 + ") and minWidth(" + i10 + ") must be >= 0").toString());
    }

    /* renamed from: copy-Zbe2FdA$default  reason: not valid java name */
    public static /* synthetic */ long m3996copyZbe2FdA$default(long j10, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = m4007getMinWidthimpl(j10);
        }
        int i15 = i10;
        if ((i14 & 2) != 0) {
            i11 = m4005getMaxWidthimpl(j10);
        }
        int i16 = i11;
        if ((i14 & 4) != 0) {
            i12 = m4006getMinHeightimpl(j10);
        }
        int i17 = i12;
        if ((i14 & 8) != 0) {
            i13 = m4004getMaxHeightimpl(j10);
        }
        return m3995copyZbe2FdA(j10, i15, i16, i17, i13);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3997equalsimpl(long j10, Object obj) {
        if (!(obj instanceof Constraints) || j10 != ((Constraints) obj).m4011unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3998equalsimpl0(long j10, long j11) {
        if (j10 == j11) {
            return true;
        }
        return false;
    }

    /* renamed from: getFocusIndex-impl  reason: not valid java name */
    private static final int m3999getFocusIndeximpl(long j10) {
        return (int) (j10 & 3);
    }

    /* renamed from: getHasBoundedHeight-impl  reason: not valid java name */
    public static final boolean m4000getHasBoundedHeightimpl(long j10) {
        int m3999getFocusIndeximpl = m3999getFocusIndeximpl(j10);
        if ((((int) (j10 >> (MinHeightOffsets[m3999getFocusIndeximpl] + 31))) & HeightMask[m3999getFocusIndeximpl]) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: getHasBoundedWidth-impl  reason: not valid java name */
    public static final boolean m4001getHasBoundedWidthimpl(long j10) {
        if ((((int) (j10 >> 33)) & WidthMask[m3999getFocusIndeximpl(j10)]) != 0) {
            return true;
        }
        return false;
    }

    /* renamed from: getHasFixedHeight-impl  reason: not valid java name */
    public static final boolean m4002getHasFixedHeightimpl(long j10) {
        if (m4004getMaxHeightimpl(j10) == m4006getMinHeightimpl(j10)) {
            return true;
        }
        return false;
    }

    /* renamed from: getHasFixedWidth-impl  reason: not valid java name */
    public static final boolean m4003getHasFixedWidthimpl(long j10) {
        if (m4005getMaxWidthimpl(j10) == m4007getMinWidthimpl(j10)) {
            return true;
        }
        return false;
    }

    /* renamed from: getMaxHeight-impl  reason: not valid java name */
    public static final int m4004getMaxHeightimpl(long j10) {
        int m3999getFocusIndeximpl = m3999getFocusIndeximpl(j10);
        int i10 = ((int) (j10 >> (MinHeightOffsets[m3999getFocusIndeximpl] + 31))) & HeightMask[m3999getFocusIndeximpl];
        if (i10 == 0) {
            return Integer.MAX_VALUE;
        }
        return i10 - 1;
    }

    /* renamed from: getMaxWidth-impl  reason: not valid java name */
    public static final int m4005getMaxWidthimpl(long j10) {
        int i10 = ((int) (j10 >> 33)) & WidthMask[m3999getFocusIndeximpl(j10)];
        if (i10 == 0) {
            return Integer.MAX_VALUE;
        }
        return i10 - 1;
    }

    /* renamed from: getMinHeight-impl  reason: not valid java name */
    public static final int m4006getMinHeightimpl(long j10) {
        int m3999getFocusIndeximpl = m3999getFocusIndeximpl(j10);
        return ((int) (j10 >> MinHeightOffsets[m3999getFocusIndeximpl])) & HeightMask[m3999getFocusIndeximpl];
    }

    /* renamed from: getMinWidth-impl  reason: not valid java name */
    public static final int m4007getMinWidthimpl(long j10) {
        return ((int) (j10 >> 2)) & WidthMask[m3999getFocusIndeximpl(j10)];
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m4008hashCodeimpl(long j10) {
        return Long.hashCode(j10);
    }

    /* renamed from: isZero-impl  reason: not valid java name */
    public static final boolean m4009isZeroimpl(long j10) {
        if (m4005getMaxWidthimpl(j10) != 0 && m4004getMaxHeightimpl(j10) != 0) {
            return false;
        }
        return true;
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m4010toStringimpl(long j10) {
        String valueOf;
        int m4005getMaxWidthimpl = m4005getMaxWidthimpl(j10);
        String str = "Infinity";
        if (m4005getMaxWidthimpl == Integer.MAX_VALUE) {
            valueOf = "Infinity";
        } else {
            valueOf = String.valueOf(m4005getMaxWidthimpl);
        }
        int m4004getMaxHeightimpl = m4004getMaxHeightimpl(j10);
        if (m4004getMaxHeightimpl != Integer.MAX_VALUE) {
            str = String.valueOf(m4004getMaxHeightimpl);
        }
        return "Constraints(minWidth = " + m4007getMinWidthimpl(j10) + ", maxWidth = " + valueOf + ", minHeight = " + m4006getMinHeightimpl(j10) + ", maxHeight = " + str + ')';
    }

    public boolean equals(Object obj) {
        return m3997equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m4008hashCodeimpl(this.value);
    }

    @NotNull
    public String toString() {
        return m4010toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m4011unboximpl() {
        return this.value;
    }

    @Stable
    public static /* synthetic */ void getHasFixedHeight$annotations() {
    }

    @Stable
    public static /* synthetic */ void getHasFixedWidth$annotations() {
    }

    public static /* synthetic */ void getValue$annotations() {
    }

    @Stable
    public static /* synthetic */ void isZero$annotations() {
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m3994constructorimpl(long j10) {
        return j10;
    }
}
