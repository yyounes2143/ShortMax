package f5;

import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.firebase.encoders.proto.Protobuf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: LogSourceMetrics.java */
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: c  reason: collision with root package name */
    private static final c f51614c = new a().a();

    /* renamed from: a  reason: collision with root package name */
    private final String f51615a;

    /* renamed from: b  reason: collision with root package name */
    private final List<LogEventDropped> f51616b;

    /* compiled from: LogSourceMetrics.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f51617a = "";

        /* renamed from: b  reason: collision with root package name */
        private List<LogEventDropped> f51618b = new ArrayList();

        a() {
        }

        public c a() {
            return new c(this.f51617a, Collections.unmodifiableList(this.f51618b));
        }

        public a b(List<LogEventDropped> list) {
            this.f51618b = list;
            return this;
        }

        public a c(String str) {
            this.f51617a = str;
            return this;
        }
    }

    c(String str, List<LogEventDropped> list) {
        this.f51615a = str;
        this.f51616b = list;
    }

    public static a c() {
        return new a();
    }

    @Protobuf(tag = 2)
    public List<LogEventDropped> a() {
        return this.f51616b;
    }

    @Protobuf(tag = 1)
    public String b() {
        return this.f51615a;
    }
}
