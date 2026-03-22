package f9;

import androidx.annotation.NonNull;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
/* compiled from: FirebaseRemoteConfigSettings.java */
/* loaded from: classes5.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final long f51673a;

    /* renamed from: b  reason: collision with root package name */
    private final long f51674b;

    /* compiled from: FirebaseRemoteConfigSettings.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private long f51675a = 60;

        /* renamed from: b  reason: collision with root package name */
        private long f51676b = ConfigFetchHandler.f21345j;

        @NonNull
        public i c() {
            return new i(this);
        }

        @NonNull
        public b d(long j10) {
            if (j10 >= 0) {
                this.f51676b = j10;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j10 + " is an invalid argument");
        }
    }

    public long a() {
        return this.f51673a;
    }

    public long b() {
        return this.f51674b;
    }

    private i(b bVar) {
        this.f51673a = bVar.f51675a;
        this.f51674b = bVar.f51676b;
    }
}
