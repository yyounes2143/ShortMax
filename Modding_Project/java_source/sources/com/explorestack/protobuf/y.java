package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessageLite;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: ExtensionRegistryLite.java */
/* loaded from: classes3.dex */
public class y {

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f14704b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f14705c = true;

    /* renamed from: d  reason: collision with root package name */
    private static volatile y f14706d;

    /* renamed from: e  reason: collision with root package name */
    static final y f14707e = new y(true);

    /* renamed from: a  reason: collision with root package name */
    private final Map<a, GeneratedMessageLite.d<?, ?>> f14708a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExtensionRegistryLite.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Object f14709a;

        /* renamed from: b  reason: collision with root package name */
        private final int f14710b;

        a(Object obj, int i10) {
            this.f14709a = obj;
            this.f14710b = i10;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f14709a != aVar.f14709a || this.f14710b != aVar.f14710b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f14709a) * 65535) + this.f14710b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y() {
        this.f14708a = new HashMap();
    }

    public static y b() {
        y yVar = f14706d;
        if (yVar == null) {
            synchronized (y.class) {
                try {
                    yVar = f14706d;
                    if (yVar == null) {
                        if (f14705c) {
                            yVar = x.a();
                        } else {
                            yVar = f14707e;
                        }
                        f14706d = yVar;
                    }
                } finally {
                }
            }
        }
        return yVar;
    }

    public static boolean c() {
        return f14704b;
    }

    public <ContainingType extends MessageLite> GeneratedMessageLite.d<ContainingType, ?> a(ContainingType containingtype, int i10) {
        return (GeneratedMessageLite.d<ContainingType, ?>) this.f14708a.get(new a(containingtype, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(y yVar) {
        if (yVar == f14707e) {
            this.f14708a = Collections.emptyMap();
        } else {
            this.f14708a = Collections.unmodifiableMap(yVar.f14708a);
        }
    }

    y(boolean z10) {
        this.f14708a = Collections.emptyMap();
    }
}
