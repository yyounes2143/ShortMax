package androidx.compose.ui.text.input;

import androidx.compose.runtime.Immutable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImeOptions.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ImeOptions {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ImeOptions Default = new ImeOptions(false, 0, false, 0, 0, 31, null);
    private final boolean autoCorrect;
    private final int capitalization;
    private final int imeAction;
    private final int keyboardType;
    private final boolean singleLine;

    /* compiled from: ImeOptions.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ImeOptions getDefault() {
            return ImeOptions.Default;
        }

        private Companion() {
        }
    }

    public /* synthetic */ ImeOptions(boolean z10, int i10, boolean z11, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, i10, z11, i11, i12);
    }

    /* renamed from: copy-uxg59PA$default  reason: not valid java name */
    public static /* synthetic */ ImeOptions m3835copyuxg59PA$default(ImeOptions imeOptions, boolean z10, int i10, boolean z11, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            z10 = imeOptions.singleLine;
        }
        if ((i13 & 2) != 0) {
            i10 = imeOptions.capitalization;
        }
        int i14 = i10;
        if ((i13 & 4) != 0) {
            z11 = imeOptions.autoCorrect;
        }
        boolean z12 = z11;
        if ((i13 & 8) != 0) {
            i11 = imeOptions.keyboardType;
        }
        int i15 = i11;
        if ((i13 & 16) != 0) {
            i12 = imeOptions.imeAction;
        }
        return imeOptions.m3836copyuxg59PA(z10, i14, z12, i15, i12);
    }

    @NotNull
    /* renamed from: copy-uxg59PA  reason: not valid java name */
    public final ImeOptions m3836copyuxg59PA(boolean z10, int i10, boolean z11, int i11, int i12) {
        return new ImeOptions(z10, i10, z11, i11, i12, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImeOptions)) {
            return false;
        }
        ImeOptions imeOptions = (ImeOptions) obj;
        if (this.singleLine == imeOptions.singleLine && KeyboardCapitalization.m3845equalsimpl0(this.capitalization, imeOptions.capitalization) && this.autoCorrect == imeOptions.autoCorrect && KeyboardType.m3856equalsimpl0(this.keyboardType, imeOptions.keyboardType) && ImeAction.m3823equalsimpl0(this.imeAction, imeOptions.imeAction)) {
            return true;
        }
        return false;
    }

    public final boolean getAutoCorrect() {
        return this.autoCorrect;
    }

    /* renamed from: getCapitalization-IUNYP9k  reason: not valid java name */
    public final int m3837getCapitalizationIUNYP9k() {
        return this.capitalization;
    }

    /* renamed from: getImeAction-eUduSuo  reason: not valid java name */
    public final int m3838getImeActioneUduSuo() {
        return this.imeAction;
    }

    /* renamed from: getKeyboardType-PjHm6EE  reason: not valid java name */
    public final int m3839getKeyboardTypePjHm6EE() {
        return this.keyboardType;
    }

    public final boolean getSingleLine() {
        return this.singleLine;
    }

    public int hashCode() {
        return (((((((Boolean.hashCode(this.singleLine) * 31) + KeyboardCapitalization.m3846hashCodeimpl(this.capitalization)) * 31) + Boolean.hashCode(this.autoCorrect)) * 31) + KeyboardType.m3857hashCodeimpl(this.keyboardType)) * 31) + ImeAction.m3824hashCodeimpl(this.imeAction);
    }

    @NotNull
    public String toString() {
        return "ImeOptions(singleLine=" + this.singleLine + ", capitalization=" + ((Object) KeyboardCapitalization.m3847toStringimpl(this.capitalization)) + ", autoCorrect=" + this.autoCorrect + ", keyboardType=" + ((Object) KeyboardType.m3858toStringimpl(this.keyboardType)) + ", imeAction=" + ((Object) ImeAction.m3825toStringimpl(this.imeAction)) + ')';
    }

    private ImeOptions(boolean z10, int i10, boolean z11, int i11, int i12) {
        this.singleLine = z10;
        this.capitalization = i10;
        this.autoCorrect = z11;
        this.keyboardType = i11;
        this.imeAction = i12;
    }

    public /* synthetic */ ImeOptions(boolean z10, int i10, boolean z11, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? false : z10, (i13 & 2) != 0 ? KeyboardCapitalization.Companion.m3850getNoneIUNYP9k() : i10, (i13 & 4) != 0 ? true : z11, (i13 & 8) != 0 ? KeyboardType.Companion.m3867getTextPjHm6EE() : i11, (i13 & 16) != 0 ? ImeAction.Companion.m3827getDefaulteUduSuo() : i12, null);
    }
}
