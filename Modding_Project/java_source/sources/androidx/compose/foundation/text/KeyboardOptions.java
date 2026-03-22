package androidx.compose.foundation.text;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KeyboardOptions.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class KeyboardOptions {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final KeyboardOptions Default = new KeyboardOptions(0, false, 0, 0, 15, null);
    private final boolean autoCorrect;
    private final int capitalization;
    private final int imeAction;
    private final int keyboardType;

    /* compiled from: KeyboardOptions.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final KeyboardOptions getDefault() {
            return KeyboardOptions.Default;
        }

        private Companion() {
        }
    }

    public /* synthetic */ KeyboardOptions(int i10, boolean z10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, z10, i11, i12);
    }

    /* renamed from: copy-3m2b7yw$default  reason: not valid java name */
    public static /* synthetic */ KeyboardOptions m726copy3m2b7yw$default(KeyboardOptions keyboardOptions, int i10, boolean z10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = keyboardOptions.capitalization;
        }
        if ((i13 & 2) != 0) {
            z10 = keyboardOptions.autoCorrect;
        }
        if ((i13 & 4) != 0) {
            i11 = keyboardOptions.keyboardType;
        }
        if ((i13 & 8) != 0) {
            i12 = keyboardOptions.imeAction;
        }
        return keyboardOptions.m727copy3m2b7yw(i10, z10, i11, i12);
    }

    public static /* synthetic */ ImeOptions toImeOptions$foundation_release$default(KeyboardOptions keyboardOptions, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = ImeOptions.Companion.getDefault().getSingleLine();
        }
        return keyboardOptions.toImeOptions$foundation_release(z10);
    }

    @NotNull
    /* renamed from: copy-3m2b7yw  reason: not valid java name */
    public final KeyboardOptions m727copy3m2b7yw(int i10, boolean z10, int i11, int i12) {
        return new KeyboardOptions(i10, z10, i11, i12, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyboardOptions)) {
            return false;
        }
        KeyboardOptions keyboardOptions = (KeyboardOptions) obj;
        if (KeyboardCapitalization.m3845equalsimpl0(this.capitalization, keyboardOptions.capitalization) && this.autoCorrect == keyboardOptions.autoCorrect && KeyboardType.m3856equalsimpl0(this.keyboardType, keyboardOptions.keyboardType) && ImeAction.m3823equalsimpl0(this.imeAction, keyboardOptions.imeAction)) {
            return true;
        }
        return false;
    }

    public final boolean getAutoCorrect() {
        return this.autoCorrect;
    }

    /* renamed from: getCapitalization-IUNYP9k  reason: not valid java name */
    public final int m728getCapitalizationIUNYP9k() {
        return this.capitalization;
    }

    /* renamed from: getImeAction-eUduSuo  reason: not valid java name */
    public final int m729getImeActioneUduSuo() {
        return this.imeAction;
    }

    /* renamed from: getKeyboardType-PjHm6EE  reason: not valid java name */
    public final int m730getKeyboardTypePjHm6EE() {
        return this.keyboardType;
    }

    public int hashCode() {
        return (((((KeyboardCapitalization.m3846hashCodeimpl(this.capitalization) * 31) + Boolean.hashCode(this.autoCorrect)) * 31) + KeyboardType.m3857hashCodeimpl(this.keyboardType)) * 31) + ImeAction.m3824hashCodeimpl(this.imeAction);
    }

    @NotNull
    public final ImeOptions toImeOptions$foundation_release(boolean z10) {
        return new ImeOptions(z10, this.capitalization, this.autoCorrect, this.keyboardType, this.imeAction, null);
    }

    @NotNull
    public String toString() {
        return "KeyboardOptions(capitalization=" + ((Object) KeyboardCapitalization.m3847toStringimpl(this.capitalization)) + ", autoCorrect=" + this.autoCorrect + ", keyboardType=" + ((Object) KeyboardType.m3858toStringimpl(this.keyboardType)) + ", imeAction=" + ((Object) ImeAction.m3825toStringimpl(this.imeAction)) + ')';
    }

    private KeyboardOptions(int i10, boolean z10, int i11, int i12) {
        this.capitalization = i10;
        this.autoCorrect = z10;
        this.keyboardType = i11;
        this.imeAction = i12;
    }

    public /* synthetic */ KeyboardOptions(int i10, boolean z10, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? KeyboardCapitalization.Companion.m3850getNoneIUNYP9k() : i10, (i13 & 2) != 0 ? true : z10, (i13 & 4) != 0 ? KeyboardType.Companion.m3867getTextPjHm6EE() : i11, (i13 & 8) != 0 ? ImeAction.Companion.m3827getDefaulteUduSuo() : i12, null);
    }
}
