package com.explorestack.protobuf;

import java.util.List;
/* compiled from: LazyStringList.java */
/* loaded from: classes3.dex */
public interface n0 extends m1 {
    void b(ByteString byteString);

    ByteString getByteString(int i10);

    Object getRaw(int i10);

    List<?> getUnderlyingElements();

    n0 getUnmodifiableView();
}
