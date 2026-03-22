package io.bidmachine.analytics.internal;

import gt.d1;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.AbstractC3314i;
import io.bidmachine.analytics.internal.G;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes7.dex */
public final class I {

    /* renamed from: a  reason: collision with root package name */
    private final J f53965a;

    /* renamed from: b  reason: collision with root package name */
    private final G.a f53966b;

    /* renamed from: c  reason: collision with root package name */
    private Map f53967c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static final class a implements G.a {

        /* renamed from: a  reason: collision with root package name */
        private final J f53968a;

        public a(J j10) {
            this.f53968a = j10;
        }

        @Override // io.bidmachine.analytics.internal.G.a
        public G a() {
            return new G(this.f53968a, new K(), kotlinx.coroutines.i.a(d1.c(Executors.newSingleThreadExecutor())));
        }
    }

    public I(J j10, G.a aVar) {
        this.f53965a = j10;
        this.f53966b = aVar;
    }

    public final void a(AbstractC3314i.a aVar) {
        List<ReaderConfig.Rule> c10 = aVar.c();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(c10, 10));
        for (ReaderConfig.Rule rule : c10) {
            arrayList.add(rule.getPath());
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(kotlin.collections.p0.e(CollectionsKt.z(arrayList, 10)), 16));
        for (Object obj : arrayList) {
            String str = (String) obj;
            linkedHashMap.put(obj, this.f53966b.a());
        }
        this.f53967c = kotlin.collections.p0.A(linkedHashMap);
    }

    public final void b() {
        Map map = this.f53967c;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                ((G) entry.getValue()).a((String) entry.getKey());
            }
        }
    }

    public /* synthetic */ I(J j10, G.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, (i10 & 2) != 0 ? new a(j10) : aVar);
    }

    public final void a() {
        Map map = this.f53967c;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                ((G) entry.getValue()).a();
            }
        }
    }

    public final String a(ReaderConfig.Rule rule) {
        String b10 = this.f53965a.b(rule.getPath());
        if (b10 != null) {
            return b10;
        }
        throw new FileNotFoundException();
    }
}
