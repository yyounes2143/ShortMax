package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Colors.kt */
@Stable
@Metadata
/* loaded from: classes.dex */
public final class Colors {
    @NotNull
    private final MutableState background$delegate;
    @NotNull
    private final MutableState error$delegate;
    @NotNull
    private final MutableState isLight$delegate;
    @NotNull
    private final MutableState onBackground$delegate;
    @NotNull
    private final MutableState onError$delegate;
    @NotNull
    private final MutableState onPrimary$delegate;
    @NotNull
    private final MutableState onSecondary$delegate;
    @NotNull
    private final MutableState onSurface$delegate;
    @NotNull
    private final MutableState primary$delegate;
    @NotNull
    private final MutableState primaryVariant$delegate;
    @NotNull
    private final MutableState secondary$delegate;
    @NotNull
    private final MutableState secondaryVariant$delegate;
    @NotNull
    private final MutableState surface$delegate;

    public /* synthetic */ Colors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, z10);
    }

    /* renamed from: copy-pvPzIIM$default  reason: not valid java name */
    public static /* synthetic */ Colors m994copypvPzIIM$default(Colors colors, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, boolean z10, int i10, Object obj) {
        long j22;
        long j23;
        long j24;
        long j25;
        long j26;
        long j27;
        long j28;
        long j29;
        long j30;
        long j31;
        long j32;
        long j33;
        boolean z11;
        if ((i10 & 1) != 0) {
            j22 = colors.m1003getPrimary0d7_KjU();
        } else {
            j22 = j10;
        }
        if ((i10 & 2) != 0) {
            j23 = colors.m1004getPrimaryVariant0d7_KjU();
        } else {
            j23 = j11;
        }
        if ((i10 & 4) != 0) {
            j24 = colors.m1005getSecondary0d7_KjU();
        } else {
            j24 = j12;
        }
        if ((i10 & 8) != 0) {
            j25 = colors.m1006getSecondaryVariant0d7_KjU();
        } else {
            j25 = j13;
        }
        if ((i10 & 16) != 0) {
            j26 = colors.m996getBackground0d7_KjU();
        } else {
            j26 = j14;
        }
        if ((i10 & 32) != 0) {
            j27 = colors.m1007getSurface0d7_KjU();
        } else {
            j27 = j15;
        }
        if ((i10 & 64) != 0) {
            j28 = colors.m997getError0d7_KjU();
        } else {
            j28 = j16;
        }
        if ((i10 & 128) != 0) {
            j29 = colors.m1000getOnPrimary0d7_KjU();
        } else {
            j29 = j17;
        }
        long j34 = j29;
        if ((i10 & 256) != 0) {
            j30 = colors.m1001getOnSecondary0d7_KjU();
        } else {
            j30 = j18;
        }
        long j35 = j30;
        if ((i10 & 512) != 0) {
            j31 = colors.m998getOnBackground0d7_KjU();
        } else {
            j31 = j19;
        }
        long j36 = j31;
        if ((i10 & 1024) != 0) {
            j32 = colors.m1002getOnSurface0d7_KjU();
        } else {
            j32 = j20;
        }
        long j37 = j32;
        if ((i10 & 2048) != 0) {
            j33 = colors.m999getOnError0d7_KjU();
        } else {
            j33 = j21;
        }
        if ((i10 & 4096) != 0) {
            z11 = colors.isLight();
        } else {
            z11 = z10;
        }
        return colors.m995copypvPzIIM(j22, j23, j24, j25, j26, j27, j28, j34, j35, j36, j37, j33, z11);
    }

    @NotNull
    /* renamed from: copy-pvPzIIM  reason: not valid java name */
    public final Colors m995copypvPzIIM(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, boolean z10) {
        return new Colors(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, z10, null);
    }

    /* renamed from: getBackground-0d7_KjU  reason: not valid java name */
    public final long m996getBackground0d7_KjU() {
        return ((Color) this.background$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getError-0d7_KjU  reason: not valid java name */
    public final long m997getError0d7_KjU() {
        return ((Color) this.error$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getOnBackground-0d7_KjU  reason: not valid java name */
    public final long m998getOnBackground0d7_KjU() {
        return ((Color) this.onBackground$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getOnError-0d7_KjU  reason: not valid java name */
    public final long m999getOnError0d7_KjU() {
        return ((Color) this.onError$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getOnPrimary-0d7_KjU  reason: not valid java name */
    public final long m1000getOnPrimary0d7_KjU() {
        return ((Color) this.onPrimary$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getOnSecondary-0d7_KjU  reason: not valid java name */
    public final long m1001getOnSecondary0d7_KjU() {
        return ((Color) this.onSecondary$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getOnSurface-0d7_KjU  reason: not valid java name */
    public final long m1002getOnSurface0d7_KjU() {
        return ((Color) this.onSurface$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getPrimary-0d7_KjU  reason: not valid java name */
    public final long m1003getPrimary0d7_KjU() {
        return ((Color) this.primary$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getPrimaryVariant-0d7_KjU  reason: not valid java name */
    public final long m1004getPrimaryVariant0d7_KjU() {
        return ((Color) this.primaryVariant$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getSecondary-0d7_KjU  reason: not valid java name */
    public final long m1005getSecondary0d7_KjU() {
        return ((Color) this.secondary$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getSecondaryVariant-0d7_KjU  reason: not valid java name */
    public final long m1006getSecondaryVariant0d7_KjU() {
        return ((Color) this.secondaryVariant$delegate.getValue()).m1852unboximpl();
    }

    /* renamed from: getSurface-0d7_KjU  reason: not valid java name */
    public final long m1007getSurface0d7_KjU() {
        return ((Color) this.surface$delegate.getValue()).m1852unboximpl();
    }

    public final boolean isLight() {
        return ((Boolean) this.isLight$delegate.getValue()).booleanValue();
    }

    /* renamed from: setBackground-8_81llA$material_release  reason: not valid java name */
    public final void m1008setBackground8_81llA$material_release(long j10) {
        this.background$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setError-8_81llA$material_release  reason: not valid java name */
    public final void m1009setError8_81llA$material_release(long j10) {
        this.error$delegate.setValue(Color.m1832boximpl(j10));
    }

    public final void setLight$material_release(boolean z10) {
        this.isLight$delegate.setValue(Boolean.valueOf(z10));
    }

    /* renamed from: setOnBackground-8_81llA$material_release  reason: not valid java name */
    public final void m1010setOnBackground8_81llA$material_release(long j10) {
        this.onBackground$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setOnError-8_81llA$material_release  reason: not valid java name */
    public final void m1011setOnError8_81llA$material_release(long j10) {
        this.onError$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setOnPrimary-8_81llA$material_release  reason: not valid java name */
    public final void m1012setOnPrimary8_81llA$material_release(long j10) {
        this.onPrimary$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setOnSecondary-8_81llA$material_release  reason: not valid java name */
    public final void m1013setOnSecondary8_81llA$material_release(long j10) {
        this.onSecondary$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setOnSurface-8_81llA$material_release  reason: not valid java name */
    public final void m1014setOnSurface8_81llA$material_release(long j10) {
        this.onSurface$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setPrimary-8_81llA$material_release  reason: not valid java name */
    public final void m1015setPrimary8_81llA$material_release(long j10) {
        this.primary$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setPrimaryVariant-8_81llA$material_release  reason: not valid java name */
    public final void m1016setPrimaryVariant8_81llA$material_release(long j10) {
        this.primaryVariant$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setSecondary-8_81llA$material_release  reason: not valid java name */
    public final void m1017setSecondary8_81llA$material_release(long j10) {
        this.secondary$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setSecondaryVariant-8_81llA$material_release  reason: not valid java name */
    public final void m1018setSecondaryVariant8_81llA$material_release(long j10) {
        this.secondaryVariant$delegate.setValue(Color.m1832boximpl(j10));
    }

    /* renamed from: setSurface-8_81llA$material_release  reason: not valid java name */
    public final void m1019setSurface8_81llA$material_release(long j10) {
        this.surface$delegate.setValue(Color.m1832boximpl(j10));
    }

    @NotNull
    public String toString() {
        return "Colors(primary=" + ((Object) Color.m1850toStringimpl(m1003getPrimary0d7_KjU())) + ", primaryVariant=" + ((Object) Color.m1850toStringimpl(m1004getPrimaryVariant0d7_KjU())) + ", secondary=" + ((Object) Color.m1850toStringimpl(m1005getSecondary0d7_KjU())) + ", secondaryVariant=" + ((Object) Color.m1850toStringimpl(m1006getSecondaryVariant0d7_KjU())) + ", background=" + ((Object) Color.m1850toStringimpl(m996getBackground0d7_KjU())) + ", surface=" + ((Object) Color.m1850toStringimpl(m1007getSurface0d7_KjU())) + ", error=" + ((Object) Color.m1850toStringimpl(m997getError0d7_KjU())) + ", onPrimary=" + ((Object) Color.m1850toStringimpl(m1000getOnPrimary0d7_KjU())) + ", onSecondary=" + ((Object) Color.m1850toStringimpl(m1001getOnSecondary0d7_KjU())) + ", onBackground=" + ((Object) Color.m1850toStringimpl(m998getOnBackground0d7_KjU())) + ", onSurface=" + ((Object) Color.m1850toStringimpl(m1002getOnSurface0d7_KjU())) + ", onError=" + ((Object) Color.m1850toStringimpl(m999getOnError0d7_KjU())) + ", isLight=" + isLight() + ')';
    }

    private Colors(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, boolean z10) {
        this.primary$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j10), SnapshotStateKt.structuralEqualityPolicy());
        this.primaryVariant$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j11), SnapshotStateKt.structuralEqualityPolicy());
        this.secondary$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j12), SnapshotStateKt.structuralEqualityPolicy());
        this.secondaryVariant$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j13), SnapshotStateKt.structuralEqualityPolicy());
        this.background$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j14), SnapshotStateKt.structuralEqualityPolicy());
        this.surface$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j15), SnapshotStateKt.structuralEqualityPolicy());
        this.error$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j16), SnapshotStateKt.structuralEqualityPolicy());
        this.onPrimary$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j17), SnapshotStateKt.structuralEqualityPolicy());
        this.onSecondary$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j18), SnapshotStateKt.structuralEqualityPolicy());
        this.onBackground$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j19), SnapshotStateKt.structuralEqualityPolicy());
        this.onSurface$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j20), SnapshotStateKt.structuralEqualityPolicy());
        this.onError$delegate = SnapshotStateKt.mutableStateOf(Color.m1832boximpl(j21), SnapshotStateKt.structuralEqualityPolicy());
        this.isLight$delegate = SnapshotStateKt.mutableStateOf(Boolean.valueOf(z10), SnapshotStateKt.structuralEqualityPolicy());
    }
}
