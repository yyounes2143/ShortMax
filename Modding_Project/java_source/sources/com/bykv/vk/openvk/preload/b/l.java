package com.bykv.vk.openvk.preload.b;

import com.bykv.vk.openvk.preload.b.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: SubBranchInterceptor.java */
/* loaded from: classes3.dex */
abstract class l<IN, OUT> extends d<IN, OUT> {

    /* renamed from: d  reason: collision with root package name */
    private Map<String, a> f11278d;

    /* compiled from: SubBranchInterceptor.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        List<h> f11279a = new ArrayList();

        public final a a(h hVar) {
            this.f11279a.add(hVar);
            return this;
        }

        public final a a(List<h> list) {
            this.f11279a.addAll(list);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, a> a() {
        return this.f11278d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(List<h> list) {
        return !list.isEmpty() && list.get(list.size() - 1).f11266a == f.class;
    }

    /* compiled from: SubBranchInterceptor.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private Map<String, a> f11280a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private com.bykv.vk.openvk.preload.b.b.a f11281b;

        public final a a(String str) {
            if (!this.f11280a.containsKey(str)) {
                a aVar = new a();
                this.f11280a.put(str, aVar);
                return aVar;
            }
            throw new IllegalArgumentException("duplicated branch name");
        }

        public final h a(Class<? extends l> cls) {
            return h.a.a().a(cls).a(this.f11280a).a(this.f11281b).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bykv.vk.openvk.preload.b.d
    public final void a(Object... objArr) {
        Object obj;
        super.a(objArr);
        if (objArr != null && objArr.length == 1 && (obj = objArr[0]) != null) {
            try {
                this.f11278d = (Map) obj;
                return;
            } catch (ClassCastException e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        throw new IllegalStateException("args error");
    }
}
