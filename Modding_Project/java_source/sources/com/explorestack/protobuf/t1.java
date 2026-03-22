package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.AbstractMessage.Builder;
import com.explorestack.protobuf.MessageOrBuilder;
/* compiled from: SingleFieldBuilderV3.java */
/* loaded from: classes3.dex */
public class t1<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> implements AbstractMessage.BuilderParent {

    /* renamed from: a  reason: collision with root package name */
    private AbstractMessage.BuilderParent f14664a;

    /* renamed from: b  reason: collision with root package name */
    private BType f14665b;

    /* renamed from: c  reason: collision with root package name */
    private MType f14666c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f14667d;

    public t1(MType mtype, AbstractMessage.BuilderParent builderParent, boolean z10) {
        this.f14666c = (MType) i0.a(mtype);
        this.f14664a = builderParent;
        this.f14667d = z10;
    }

    private void h() {
        AbstractMessage.BuilderParent builderParent;
        if (this.f14665b != null) {
            this.f14666c = null;
        }
        if (this.f14667d && (builderParent = this.f14664a) != null) {
            builderParent.markDirty();
            this.f14667d = false;
        }
    }

    public MType a() {
        this.f14667d = true;
        return e();
    }

    public t1<MType, BType, IType> b() {
        Message defaultInstanceForType;
        MType mtype = this.f14666c;
        if (mtype != null) {
            defaultInstanceForType = mtype.getDefaultInstanceForType();
        } else {
            defaultInstanceForType = this.f14665b.getDefaultInstanceForType();
        }
        this.f14666c = (MType) defaultInstanceForType;
        BType btype = this.f14665b;
        if (btype != null) {
            btype.dispose();
            this.f14665b = null;
        }
        h();
        return this;
    }

    public void c() {
        this.f14664a = null;
    }

    public BType d() {
        if (this.f14665b == null) {
            BType btype = (BType) this.f14666c.newBuilderForType(this);
            this.f14665b = btype;
            btype.mergeFrom(this.f14666c);
            this.f14665b.markClean();
        }
        return this.f14665b;
    }

    public MType e() {
        if (this.f14666c == null) {
            this.f14666c = (MType) this.f14665b.buildPartial();
        }
        return this.f14666c;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [BType extends com.explorestack.protobuf.AbstractMessage$Builder, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    /* JADX WARN: Type inference failed for: r0v1, types: [MType extends com.explorestack.protobuf.AbstractMessage, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    public IType f() {
        BType btype = this.f14665b;
        if (btype != 0) {
            return btype;
        }
        return this.f14666c;
    }

    public t1<MType, BType, IType> g(MType mtype) {
        if (this.f14665b == null) {
            Message message = this.f14666c;
            if (message == message.getDefaultInstanceForType()) {
                this.f14666c = mtype;
                h();
                return this;
            }
        }
        d().mergeFrom(mtype);
        h();
        return this;
    }

    public t1<MType, BType, IType> i(MType mtype) {
        this.f14666c = (MType) i0.a(mtype);
        BType btype = this.f14665b;
        if (btype != null) {
            btype.dispose();
            this.f14665b = null;
        }
        h();
        return this;
    }

    @Override // com.explorestack.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        h();
    }
}
