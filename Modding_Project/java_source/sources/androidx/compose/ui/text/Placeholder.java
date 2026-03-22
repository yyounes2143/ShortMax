package androidx.compose.ui.text;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Placeholder.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Placeholder {
    private final long height;
    private final int placeholderVerticalAlign;
    private final long width;

    public /* synthetic */ Placeholder(long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, i10);
    }

    /* renamed from: copy-K8Q-__8$default  reason: not valid java name */
    public static /* synthetic */ Placeholder m3633copyK8Q__8$default(Placeholder placeholder, long j10, long j11, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            j10 = placeholder.width;
        }
        long j12 = j10;
        if ((i11 & 2) != 0) {
            j11 = placeholder.height;
        }
        long j13 = j11;
        if ((i11 & 4) != 0) {
            i10 = placeholder.placeholderVerticalAlign;
        }
        return placeholder.m3634copyK8Q__8(j12, j13, i10);
    }

    @NotNull
    /* renamed from: copy-K8Q-__8  reason: not valid java name */
    public final Placeholder m3634copyK8Q__8(long j10, long j11, int i10) {
        return new Placeholder(j10, j11, i10, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Placeholder)) {
            return false;
        }
        Placeholder placeholder = (Placeholder) obj;
        if (TextUnit.m4227equalsimpl0(this.width, placeholder.width) && TextUnit.m4227equalsimpl0(this.height, placeholder.height) && PlaceholderVerticalAlign.m3641equalsimpl0(this.placeholderVerticalAlign, placeholder.placeholderVerticalAlign)) {
            return true;
        }
        return false;
    }

    /* renamed from: getHeight-XSAIIZE  reason: not valid java name */
    public final long m3635getHeightXSAIIZE() {
        return this.height;
    }

    /* renamed from: getPlaceholderVerticalAlign-J6kI3mc  reason: not valid java name */
    public final int m3636getPlaceholderVerticalAlignJ6kI3mc() {
        return this.placeholderVerticalAlign;
    }

    /* renamed from: getWidth-XSAIIZE  reason: not valid java name */
    public final long m3637getWidthXSAIIZE() {
        return this.width;
    }

    public int hashCode() {
        return (((TextUnit.m4231hashCodeimpl(this.width) * 31) + TextUnit.m4231hashCodeimpl(this.height)) * 31) + PlaceholderVerticalAlign.m3642hashCodeimpl(this.placeholderVerticalAlign);
    }

    @NotNull
    public String toString() {
        return "Placeholder(width=" + ((Object) TextUnit.m4237toStringimpl(this.width)) + ", height=" + ((Object) TextUnit.m4237toStringimpl(this.height)) + ", placeholderVerticalAlign=" + ((Object) PlaceholderVerticalAlign.m3643toStringimpl(this.placeholderVerticalAlign)) + ')';
    }

    private Placeholder(long j10, long j11, int i10) {
        this.width = j10;
        this.height = j11;
        this.placeholderVerticalAlign = i10;
        if (!TextUnitKt.m4248isUnspecifiedR2X_6o(j10)) {
            if (TextUnitKt.m4248isUnspecifiedR2X_6o(j11)) {
                throw new IllegalArgumentException("height cannot be TextUnit.Unspecified");
            }
            return;
        }
        throw new IllegalArgumentException("width cannot be TextUnit.Unspecified");
    }
}
