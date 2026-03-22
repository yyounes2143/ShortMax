package com.google.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RawMessageInfo.java */
/* loaded from: classes5.dex */
public final class j0 implements x {
    private static final int IS_EDITION_BIT = 4;
    private static final int IS_PROTO2_BIT = 1;
    private final MessageLite defaultInstance;
    private final int flags;
    private final String info;
    private final Object[] objects;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(MessageLite messageLite, String str, Object[] objArr) {
        this.defaultInstance = messageLite;
        this.info = str;
        this.objects = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.flags = charAt;
            return;
        }
        int i10 = charAt & 8191;
        int i11 = 13;
        int i12 = 1;
        while (true) {
            int i13 = i12 + 1;
            char charAt2 = str.charAt(i12);
            if (charAt2 >= 55296) {
                i10 |= (charAt2 & 8191) << i11;
                i11 += 13;
                i12 = i13;
            } else {
                this.flags = i10 | (charAt2 << i11);
                return;
            }
        }
    }

    @Override // com.google.protobuf.x
    public MessageLite getDefaultInstance() {
        return this.defaultInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] getObjects() {
        return this.objects;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getStringInfo() {
        return this.info;
    }

    @Override // com.google.protobuf.x
    public ProtoSyntax getSyntax() {
        int i10 = this.flags;
        if ((i10 & 1) != 0) {
            return ProtoSyntax.PROTO2;
        }
        if ((i10 & 4) == 4) {
            return ProtoSyntax.EDITIONS;
        }
        return ProtoSyntax.PROTO3;
    }

    @Override // com.google.protobuf.x
    public boolean isMessageSetWireFormat() {
        if ((this.flags & 2) == 2) {
            return true;
        }
        return false;
    }
}
