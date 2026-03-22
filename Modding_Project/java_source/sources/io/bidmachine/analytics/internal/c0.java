package io.bidmachine.analytics.internal;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.BytesValue;
import io.bidmachine.analytics.internal.g0;
import io.bidmachine.analytics.internal.h0;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import kotlin.text.Charsets;
/* loaded from: classes7.dex */
public final class c0 implements g0.a {

    /* renamed from: a  reason: collision with root package name */
    private final e0 f54063a;

    public c0(e0 e0Var) {
        this.f54063a = e0Var;
    }

    @Override // io.bidmachine.analytics.internal.g0.a
    public BytesValue a(h0.a aVar) {
        C3319n a10 = this.f54063a.a();
        if (a10 != null) {
            if (!a10.f()) {
                return BytesValue.newBuilder().setValue(ByteString.readFrom(new ByteArrayInputStream(a10.toString().getBytes(Charsets.UTF_8)))).build();
            }
            throw new FileNotFoundException("Empty data");
        }
        throw new FileNotFoundException("No data received yet");
    }
}
