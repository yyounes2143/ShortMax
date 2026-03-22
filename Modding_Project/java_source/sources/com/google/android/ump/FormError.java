package com.google.android.ump;

import androidx.annotation.RecentlyNonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes5.dex */
public class FormError {

    /* renamed from: a  reason: collision with root package name */
    private final int f20036a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20037b;

    /* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface ErrorCode {
        public static final int INTERNAL_ERROR = 1;
        public static final int INTERNET_ERROR = 2;
        public static final int INVALID_OPERATION = 3;
        public static final int TIME_OUT = 4;
    }

    public FormError(int i10, @RecentlyNonNull String str) {
        this.f20036a = i10;
        this.f20037b = str;
    }

    public int getErrorCode() {
        return this.f20036a;
    }

    @RecentlyNonNull
    public String getMessage() {
        return this.f20037b;
    }
}
