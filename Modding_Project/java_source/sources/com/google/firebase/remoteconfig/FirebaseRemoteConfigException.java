package com.google.firebase.remoteconfig;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.FirebaseException;
/* loaded from: classes5.dex */
public class FirebaseRemoteConfigException extends FirebaseException {

    /* renamed from: a  reason: collision with root package name */
    private final Code f21314a;

    /* loaded from: classes5.dex */
    public enum Code {
        UNKNOWN(0),
        CONFIG_UPDATE_STREAM_ERROR(1),
        CONFIG_UPDATE_MESSAGE_INVALID(2),
        CONFIG_UPDATE_NOT_FETCHED(3),
        CONFIG_UPDATE_UNAVAILABLE(4);
        
        private final int value;

        Code(int i10) {
            this.value = i10;
        }

        public int value() {
            return this.value;
        }
    }

    public FirebaseRemoteConfigException(@NonNull String str) {
        super(str);
        this.f21314a = Code.UNKNOWN;
    }

    public FirebaseRemoteConfigException(@NonNull String str, @Nullable Throwable th2) {
        super(str, th2);
        this.f21314a = Code.UNKNOWN;
    }

    public FirebaseRemoteConfigException(@NonNull String str, @NonNull Code code) {
        super(str);
        this.f21314a = code;
    }

    public FirebaseRemoteConfigException(@NonNull String str, @Nullable Throwable th2, @NonNull Code code) {
        super(str, th2);
        this.f21314a = code;
    }
}
