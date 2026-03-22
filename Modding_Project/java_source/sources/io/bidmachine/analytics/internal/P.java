package io.bidmachine.analytics.internal;

import com.explorestack.protobuf.Struct;
import io.bidmachine.protobuf.sdk.Error;
import io.bidmachine.protobuf.sdk.Event;
import io.bidmachine.protobuf.sdk.Monitor;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes7.dex */
public final class P extends Y {

    /* renamed from: f  reason: collision with root package name */
    private final String f53992f;

    /* renamed from: g  reason: collision with root package name */
    private final Struct f53993g;

    /* renamed from: h  reason: collision with root package name */
    private final List f53994h;

    public /* synthetic */ P(String str, String str2, Struct struct, List list, p0 p0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, struct, list, (i10 & 16) != 0 ? p0.f54302g.a() : p0Var);
    }

    @Override // io.bidmachine.analytics.internal.Y
    public byte[] b() {
        try {
            Result.a aVar = Result.f60901b;
            Monitor.Builder name = Monitor.newBuilder().setName(this.f53992f);
            List<Q> list = this.f53994h;
            ArrayList<Monitor.Record> arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (Q q10 : list) {
                Monitor.Record.Builder timestamp = Monitor.Record.newBuilder().setFields(b0.a(q10.a())).setTimestamp(b0.a(q10.f()));
                q0 b10 = q10.b();
                if (b10 != null) {
                    timestamp.setError(Error.newBuilder().setName(b10.a()).setError(Error.Data.newBuilder().setCode(Z.a(b10.c()).getNumber()).setDescription(b10.b()).build()).build());
                }
                arrayList.add(timestamp.build());
            }
            for (Monitor.Record record : arrayList) {
                name.addRecords(record);
            }
            return Event.newBuilder().setMonitor(name.build()).setExtrasPrivate(this.f53993g).build().toByteArray();
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            Result.d(kotlin.f.a(th2));
            return null;
        }
    }

    public P(String str, String str2, Struct struct, List list, p0 p0Var) {
        super(o0.Post, str, p0Var, null, 8, null);
        this.f53992f = str2;
        this.f53993g = struct;
        this.f53994h = list;
    }

    @Override // io.bidmachine.analytics.internal.Y
    /* renamed from: c */
    public P a() {
        return this;
    }
}
