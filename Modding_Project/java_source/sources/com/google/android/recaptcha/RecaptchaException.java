package com.google.android.recaptcha;

import androidx.annotation.NonNull;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
@Metadata
/* loaded from: classes5.dex */
public final class RecaptchaException extends Exception {
    @NotNull
    private final RecaptchaErrorCode errorCode;
    @NotNull
    private final String errorMessage;

    public RecaptchaException(@NonNull RecaptchaErrorCode recaptchaErrorCode, @NonNull String str) {
        super(str);
        this.errorCode = recaptchaErrorCode;
        this.errorMessage = str;
    }

    @NotNull
    public final RecaptchaErrorCode getErrorCode() {
        return this.errorCode;
    }

    @NotNull
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public /* synthetic */ RecaptchaException(@NonNull RecaptchaErrorCode recaptchaErrorCode, @NonNull String str, int i10, @NonNull DefaultConstructorMarker defaultConstructorMarker) {
        this(recaptchaErrorCode, (i10 & 2) != 0 ? recaptchaErrorCode.getErrorMessage() : str);
    }
}
