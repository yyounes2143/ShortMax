package io.bidmachine.analytics.internal;

import com.explorestack.protobuf.BytesValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Timestamp;
import io.bidmachine.analytics.internal.h0;
import io.bidmachine.analytics.internal.q0;
import io.bidmachine.protobuf.sdk.Error;
import io.bidmachine.protobuf.sdk.Event;
import io.bidmachine.protobuf.sdk.Reader;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes7.dex */
public final class g0 extends Y {

    /* renamed from: f  reason: collision with root package name */
    private final String f54094f;

    /* renamed from: g  reason: collision with root package name */
    private final Struct f54095g;

    /* renamed from: h  reason: collision with root package name */
    private final List f54096h;

    /* renamed from: i  reason: collision with root package name */
    private final a f54097i;

    /* loaded from: classes7.dex */
    public interface a {
        BytesValue a(h0.a aVar);
    }

    public /* synthetic */ g0(String str, String str2, Struct struct, List list, a aVar, p0 p0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, struct, list, aVar, (i10 & 32) != 0 ? p0.f54302g.a() : p0Var);
    }

    @Override // io.bidmachine.analytics.internal.Y
    public byte[] b() {
        Object next;
        Timestamp a10;
        q0.a aVar;
        try {
            Result.a aVar2 = Result.f60901b;
            Reader.Builder name = Reader.newBuilder().setName(this.f54094f);
            List<h0> list = this.f54096h;
            ArrayList<Reader.Record> arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (h0 h0Var : list) {
                Reader.Record.Builder rule = Reader.Record.newBuilder().setRule(Reader.Rule.newBuilder().setGeneralRule(Reader.Rule.GeneralRule.newBuilder().setTag(b0.a(h0Var.e().b())).setPath(b0.a(h0Var.e().a())).build()));
                q0 b10 = h0Var.b();
                if (b10 == null) {
                    Result.a aVar3 = Result.f60901b;
                    Throwable g10 = Result.g(Result.d(rule.setRawData(this.f54097i.a(h0Var.e()))));
                    if (g10 != null) {
                        if (g10 instanceof FileNotFoundException) {
                            aVar = q0.a.READER_NO_CONTENT;
                        } else if (g10 instanceof SecurityException) {
                            aVar = q0.a.READER_NO_ACCESS;
                        } else {
                            aVar = q0.a.READER_INVALID;
                        }
                        b10 = new q0(this.f54094f, aVar, s0.a(g10));
                    }
                }
                if (b10 != null) {
                    rule.setError(Error.newBuilder().setName(b10.a()).setError(Error.Data.newBuilder().setCode(Z.a(b10.c()).getNumber()).setDescription(b10.b()).build()).build());
                }
                arrayList.add(rule.build());
            }
            for (Reader.Record record : arrayList) {
                name.addRecords(record);
            }
            Iterator it = this.f54096h.iterator();
            if (!it.hasNext()) {
                next = null;
            } else {
                next = it.next();
                if (it.hasNext()) {
                    long f10 = ((h0) next).f();
                    do {
                        Object next2 = it.next();
                        long f11 = ((h0) next2).f();
                        if (f10 < f11) {
                            next = next2;
                            f10 = f11;
                        }
                    } while (it.hasNext());
                }
            }
            h0 h0Var2 = (h0) next;
            if (h0Var2 != null && (a10 = b0.a(h0Var2.f())) != null) {
                name.setTimestamp(a10);
            }
            return Event.newBuilder().setReader(name.build()).setExtrasPrivate(this.f54095g).build().toByteArray();
        } catch (Throwable th2) {
            Result.a aVar4 = Result.f60901b;
            Result.d(kotlin.f.a(th2));
            return null;
        }
    }

    public g0(String str, String str2, Struct struct, List list, a aVar, p0 p0Var) {
        super(o0.Post, str, p0Var, null, 8, null);
        this.f54094f = str2;
        this.f54095g = struct;
        this.f54096h = list;
        this.f54097i = aVar;
    }

    @Override // io.bidmachine.analytics.internal.Y
    /* renamed from: c */
    public g0 a() {
        return this;
    }
}
