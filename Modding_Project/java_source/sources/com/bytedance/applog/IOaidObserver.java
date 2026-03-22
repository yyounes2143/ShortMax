package com.bytedance.applog;

import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public interface IOaidObserver {

    /* loaded from: classes3.dex */
    public static final class Oaid {
        @Nullable

        /* renamed from: id  reason: collision with root package name */
        public final String f11743id;

        public Oaid(@Nullable String str) {
            this.f11743id = str;
        }
    }

    @AnyThread
    void onOaidLoaded(@NonNull Oaid oaid);
}
