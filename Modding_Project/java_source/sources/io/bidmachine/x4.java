package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.core.NetworkRequest;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NetworkRequestManager.java */
/* loaded from: classes7.dex */
public class x4 {

    /* renamed from: c  reason: collision with root package name */
    private static volatile x4 f58719c;

    /* renamed from: a  reason: collision with root package name */
    private final Object f58720a = new Object();
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final Map<String, NetworkRequest<?, Response, fr.a>> f58721b = new HashMap();

    x4() {
    }

    @NonNull
    public static x4 b() {
        x4 x4Var = f58719c;
        if (x4Var == null) {
            synchronized (x4.class) {
                try {
                    x4Var = f58719c;
                    if (x4Var == null) {
                        x4Var = new x4();
                        f58719c = x4Var;
                    }
                } finally {
                }
            }
        }
        return x4Var;
    }

    public void a(@NonNull String str, @NonNull NetworkRequest<?, Response, fr.a> networkRequest) {
        synchronized (this.f58720a) {
            this.f58721b.put(str, networkRequest);
        }
    }

    public NetworkRequest<?, Response, fr.a> c(@NonNull String str) {
        NetworkRequest<?, Response, fr.a> remove;
        synchronized (this.f58720a) {
            remove = this.f58721b.remove(str);
        }
        return remove;
    }
}
