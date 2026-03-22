package com.explorestack.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: StructuralMessageInfo.java */
/* loaded from: classes3.dex */
final class z1 implements y0 {

    /* renamed from: a  reason: collision with root package name */
    private final ProtoSyntax f14720a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f14721b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f14722c;

    /* renamed from: d  reason: collision with root package name */
    private final d0[] f14723d;

    /* renamed from: e  reason: collision with root package name */
    private final MessageLite f14724e;

    /* compiled from: StructuralMessageInfo.java */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<d0> f14725a;

        /* renamed from: b  reason: collision with root package name */
        private ProtoSyntax f14726b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f14727c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f14728d;

        /* renamed from: e  reason: collision with root package name */
        private int[] f14729e = null;

        /* renamed from: f  reason: collision with root package name */
        private Object f14730f;

        public a(int i10) {
            this.f14725a = new ArrayList(i10);
        }

        public z1 a() {
            if (!this.f14727c) {
                if (this.f14726b != null) {
                    this.f14727c = true;
                    Collections.sort(this.f14725a);
                    return new z1(this.f14726b, this.f14728d, this.f14729e, (d0[]) this.f14725a.toArray(new d0[0]), this.f14730f);
                }
                throw new IllegalStateException("Must specify a proto syntax");
            }
            throw new IllegalStateException("Builder can only build once");
        }

        public void b(int[] iArr) {
            this.f14729e = iArr;
        }

        public void c(Object obj) {
            this.f14730f = obj;
        }

        public void d(d0 d0Var) {
            if (!this.f14727c) {
                this.f14725a.add(d0Var);
                return;
            }
            throw new IllegalStateException("Builder can only build once");
        }

        public void e(boolean z10) {
            this.f14728d = z10;
        }

        public void f(ProtoSyntax protoSyntax) {
            this.f14726b = (ProtoSyntax) i0.b(protoSyntax, "syntax");
        }
    }

    z1(ProtoSyntax protoSyntax, boolean z10, int[] iArr, d0[] d0VarArr, Object obj) {
        this.f14720a = protoSyntax;
        this.f14721b = z10;
        this.f14722c = iArr;
        this.f14723d = d0VarArr;
        this.f14724e = (MessageLite) i0.b(obj, "defaultInstance");
    }

    public static a c(int i10) {
        return new a(i10);
    }

    public int[] a() {
        return this.f14722c;
    }

    public d0[] b() {
        return this.f14723d;
    }

    @Override // com.explorestack.protobuf.y0
    public MessageLite getDefaultInstance() {
        return this.f14724e;
    }

    @Override // com.explorestack.protobuf.y0
    public ProtoSyntax getSyntax() {
        return this.f14720a;
    }

    @Override // com.explorestack.protobuf.y0
    public boolean isMessageSetWireFormat() {
        return this.f14721b;
    }
}
