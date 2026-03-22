package com.google.android.recaptcha;

import androidx.annotation.NonNull;
import com.google.android.gms.tasks.Task;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
@Metadata
/* loaded from: classes5.dex */
public interface RecaptchaTasksClient {
    @NotNull
    Task<String> executeTask(@NonNull RecaptchaAction recaptchaAction);

    @NotNull
    Task<String> executeTask(@NonNull RecaptchaAction recaptchaAction, long j10);
}
