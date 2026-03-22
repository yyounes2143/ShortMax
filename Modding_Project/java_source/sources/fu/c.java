package fu;

import android.annotation.TargetApi;
import fu.e;
import fu.h;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
/* compiled from: BuiltInFactories.java */
/* loaded from: classes8.dex */
class c {

    /* compiled from: BuiltInFactories.java */
    @TargetApi(24)
    /* loaded from: classes8.dex */
    static final class a extends c {
        @Override // fu.c
        List<? extends e.a> a(Executor executor) {
            return Arrays.asList(new g(), new i(executor));
        }

        @Override // fu.c
        List<? extends h.a> b() {
            return Collections.singletonList(new u());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<? extends e.a> a(Executor executor) {
        return Collections.singletonList(new i(executor));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<? extends h.a> b() {
        return Collections.emptyList();
    }
}
