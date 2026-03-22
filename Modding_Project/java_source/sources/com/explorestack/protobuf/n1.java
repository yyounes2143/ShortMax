package com.explorestack.protobuf;
/* compiled from: RawMessageInfo.java */
/* loaded from: classes3.dex */
final class n1 implements y0 {

    /* renamed from: a  reason: collision with root package name */
    private final MessageLite f14508a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14509b;

    /* renamed from: c  reason: collision with root package name */
    private final Object[] f14510c;

    /* renamed from: d  reason: collision with root package name */
    private final int f14511d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] a() {
        return this.f14510c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f14509b;
    }

    @Override // com.explorestack.protobuf.y0
    public MessageLite getDefaultInstance() {
        return this.f14508a;
    }

    @Override // com.explorestack.protobuf.y0
    public ProtoSyntax getSyntax() {
        if ((this.f14511d & 1) == 1) {
            return ProtoSyntax.PROTO2;
        }
        return ProtoSyntax.PROTO3;
    }

    @Override // com.explorestack.protobuf.y0
    public boolean isMessageSetWireFormat() {
        if ((this.f14511d & 2) == 2) {
            return true;
        }
        return false;
    }
}
