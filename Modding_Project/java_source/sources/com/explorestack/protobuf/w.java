package com.explorestack.protobuf;

import com.explorestack.protobuf.Descriptors;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ExtensionRegistry.java */
/* loaded from: classes3.dex */
public class w extends y {

    /* renamed from: j  reason: collision with root package name */
    static final w f14692j = new w(true);

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, b> f14693f;

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, b> f14694g;

    /* renamed from: h  reason: collision with root package name */
    private final Map<a, b> f14695h;

    /* renamed from: i  reason: collision with root package name */
    private final Map<a, b> f14696i;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExtensionRegistry.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Descriptors.Descriptor f14697a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14698b;

        a(Descriptors.Descriptor descriptor, int i10) {
            this.f14697a = descriptor;
            this.f14698b = i10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f14697a != aVar.f14697a || this.f14698b != aVar.f14698b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (this.f14697a.hashCode() * 65535) + this.f14698b;
        }
    }

    /* compiled from: ExtensionRegistry.java */
    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Descriptors.FieldDescriptor f14699a;

        /* renamed from: b  reason: collision with root package name */
        public final Message f14700b;
    }

    private w() {
        this.f14693f = new HashMap();
        this.f14694g = new HashMap();
        this.f14695h = new HashMap();
        this.f14696i = new HashMap();
    }

    public static w g() {
        return f14692j;
    }

    @Deprecated
    public b d(Descriptors.Descriptor descriptor, int i10) {
        return f(descriptor, i10);
    }

    public b e(String str) {
        return this.f14693f.get(str);
    }

    public b f(Descriptors.Descriptor descriptor, int i10) {
        return this.f14695h.get(new a(descriptor, i10));
    }

    w(boolean z10) {
        super(y.f14707e);
        this.f14693f = Collections.emptyMap();
        this.f14694g = Collections.emptyMap();
        this.f14695h = Collections.emptyMap();
        this.f14696i = Collections.emptyMap();
    }
}
