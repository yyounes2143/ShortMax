package com.google.android.recaptcha;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import kotlin.Metadata;
import kotlin.Result;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
@Metadata
/* loaded from: classes5.dex */
public interface RecaptchaClient {
    @Nullable
    /* renamed from: execute-0E7RQCE  reason: not valid java name */
    Object mo4670execute0E7RQCE(@NonNull RecaptchaAction recaptchaAction, long j10, @NonNull c<? super Result<String>> cVar);

    @Nullable
    /* renamed from: execute-gIAlu-s  reason: not valid java name */
    Object mo4671executegIAlus(@NonNull RecaptchaAction recaptchaAction, @NonNull c<? super Result<String>> cVar);
}
