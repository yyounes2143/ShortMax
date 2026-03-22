package n7;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-measurement-connector@@20.0.1 */
/* loaded from: classes5.dex */
public interface a {

    /* compiled from: com.google.firebase:firebase-measurement-connector@@20.0.1 */
    @KeepForSdk
    /* renamed from: n7.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0876a {
    }

    /* compiled from: com.google.firebase:firebase-measurement-connector@@20.0.1 */
    @KeepForSdk
    /* loaded from: classes5.dex */
    public interface b {
        @KeepForSdk
        void a(int i10, @Nullable Bundle bundle);
    }

    /* compiled from: com.google.firebase:firebase-measurement-connector@@20.0.1 */
    @KeepForSdk
    /* loaded from: classes5.dex */
    public static class c {
        @NonNull
        @KeepForSdk

        /* renamed from: a  reason: collision with root package name */
        public String f62843a;
        @NonNull
        @KeepForSdk

        /* renamed from: b  reason: collision with root package name */
        public String f62844b;
        @Nullable
        @KeepForSdk

        /* renamed from: c  reason: collision with root package name */
        public Object f62845c;
        @Nullable
        @KeepForSdk

        /* renamed from: d  reason: collision with root package name */
        public String f62846d;
        @KeepForSdk

        /* renamed from: e  reason: collision with root package name */
        public long f62847e;
        @Nullable
        @KeepForSdk

        /* renamed from: f  reason: collision with root package name */
        public String f62848f;
        @Nullable
        @KeepForSdk

        /* renamed from: g  reason: collision with root package name */
        public Bundle f62849g;
        @Nullable
        @KeepForSdk

        /* renamed from: h  reason: collision with root package name */
        public String f62850h;
        @Nullable
        @KeepForSdk

        /* renamed from: i  reason: collision with root package name */
        public Bundle f62851i;
        @KeepForSdk

        /* renamed from: j  reason: collision with root package name */
        public long f62852j;
        @Nullable
        @KeepForSdk

        /* renamed from: k  reason: collision with root package name */
        public String f62853k;
        @Nullable
        @KeepForSdk

        /* renamed from: l  reason: collision with root package name */
        public Bundle f62854l;
        @KeepForSdk

        /* renamed from: m  reason: collision with root package name */
        public long f62855m;
        @KeepForSdk

        /* renamed from: n  reason: collision with root package name */
        public boolean f62856n;
        @KeepForSdk

        /* renamed from: o  reason: collision with root package name */
        public long f62857o;
    }

    @KeepForSdk
    void a(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle);

    @KeepForSdk
    void b(@NonNull String str, @NonNull String str2, @NonNull Object obj);

    @KeepForSdk
    @WorkerThread
    int c(@NonNull @Size(min = 1) String str);

    @KeepForSdk
    void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle);

    @NonNull
    @KeepForSdk
    @WorkerThread
    List<c> d(@NonNull String str, @Nullable @Size(max = 23, min = 1) String str2);

    @NonNull
    @KeepForSdk
    @WorkerThread
    Map<String, Object> e(boolean z10);

    @Nullable
    @KeepForSdk
    InterfaceC0876a f(@NonNull String str, @NonNull b bVar);

    @KeepForSdk
    void g(@NonNull c cVar);
}
