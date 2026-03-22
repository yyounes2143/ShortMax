package com.explorestack.protobuf;

import java.util.List;
/* loaded from: classes3.dex */
public class UninitializedMessageException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f14205a;

    public UninitializedMessageException(MessageLite messageLite) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.f14205a = null;
    }

    private static String d(List<String> list) {
        StringBuilder sb2 = new StringBuilder("Message missing required fields: ");
        boolean z10 = true;
        for (String str : list) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(", ");
            }
            sb2.append(str);
        }
        return sb2.toString();
    }

    public InvalidProtocolBufferException b() {
        return new InvalidProtocolBufferException(getMessage());
    }

    public UninitializedMessageException(List<String> list) {
        super(d(list));
        this.f14205a = list;
    }
}
