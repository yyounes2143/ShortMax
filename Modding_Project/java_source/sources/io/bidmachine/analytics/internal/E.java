package io.bidmachine.analytics.internal;

import com.explorestack.protobuf.BytesValue;
import io.bidmachine.analytics.internal.F;
import io.bidmachine.analytics.internal.g0;
import io.bidmachine.analytics.internal.h0;
import io.bidmachine.protobuf.sdk.OSLog;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.text.Charsets;
/* loaded from: classes7.dex */
public final class E implements g0.a {

    /* renamed from: a  reason: collision with root package name */
    private final J f53944a;

    /* renamed from: b  reason: collision with root package name */
    private final F f53945b = new F();

    public E(J j10) {
        this.f53944a = j10;
    }

    @Override // io.bidmachine.analytics.internal.g0.a
    public BytesValue a(h0.a aVar) {
        ArrayList arrayList = new ArrayList();
        InputStream a10 = this.f53944a.a(aVar.a());
        if (a10 != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a10, Charsets.UTF_8), 8192);
            try {
                for (String str : ws.n.e(bufferedReader)) {
                    F.b a11 = this.f53945b.a(str);
                    if (a11 != null) {
                        arrayList.add(OSLog.Record.newBuilder().setTimestamp(b0.a(a11.d())).setTag(a11.c()).setLevel(a11.a()).setMessage(a11.b()).setSource("").build());
                    }
                }
                Unit unit = Unit.f60915a;
                ws.b.a(bufferedReader, null);
            } finally {
            }
        }
        if (!arrayList.isEmpty()) {
            return BytesValue.newBuilder().setValue(OSLog.newBuilder().addAllRecords(arrayList).build().toByteString()).build();
        }
        throw new FileNotFoundException("No records found");
    }
}
