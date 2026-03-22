package kn;

import android.net.Uri;
import androidx.annotation.Nullable;
import cn.m0;
import io.bidmachine.media3.common.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
/* compiled from: DashManifest.java */
/* loaded from: classes8.dex */
public class c implements rn.b<c> {

    /* renamed from: a  reason: collision with root package name */
    public final long f60805a;

    /* renamed from: b  reason: collision with root package name */
    public final long f60806b;

    /* renamed from: c  reason: collision with root package name */
    public final long f60807c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f60808d;

    /* renamed from: e  reason: collision with root package name */
    public final long f60809e;

    /* renamed from: f  reason: collision with root package name */
    public final long f60810f;

    /* renamed from: g  reason: collision with root package name */
    public final long f60811g;

    /* renamed from: h  reason: collision with root package name */
    public final long f60812h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final o f60813i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final l f60814j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final Uri f60815k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final h f60816l;

    /* renamed from: m  reason: collision with root package name */
    private final List<g> f60817m;

    public c(long j10, long j11, long j12, boolean z10, long j13, long j14, long j15, long j16, @Nullable h hVar, @Nullable o oVar, @Nullable l lVar, @Nullable Uri uri, List<g> list) {
        List<g> list2;
        this.f60805a = j10;
        this.f60806b = j11;
        this.f60807c = j12;
        this.f60808d = z10;
        this.f60809e = j13;
        this.f60810f = j14;
        this.f60811g = j15;
        this.f60812h = j16;
        this.f60816l = hVar;
        this.f60813i = oVar;
        this.f60815k = uri;
        this.f60814j = lVar;
        if (list == null) {
            list2 = Collections.emptyList();
        } else {
            list2 = list;
        }
        this.f60817m = list2;
    }

    private static ArrayList<a> b(List<a> list, LinkedList<StreamKey> linkedList) {
        StreamKey poll = linkedList.poll();
        int i10 = poll.f55131a;
        ArrayList<a> arrayList = new ArrayList<>();
        do {
            int i11 = poll.f55132b;
            a aVar = list.get(i11);
            List<j> list2 = aVar.f60797c;
            ArrayList arrayList2 = new ArrayList();
            do {
                arrayList2.add(list2.get(poll.f55133c));
                poll = linkedList.poll();
                if (poll.f55131a != i10) {
                    break;
                }
            } while (poll.f55132b == i11);
            arrayList.add(new a(aVar.f60795a, aVar.f60796b, arrayList2, aVar.f60798d, aVar.f60799e, aVar.f60800f));
        } while (poll.f55131a == i10);
        linkedList.addFirst(poll);
        return arrayList;
    }

    @Override // rn.b
    /* renamed from: a */
    public final c copy(List<StreamKey> list) {
        long j10;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new StreamKey(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j11 = 0;
        int i10 = 0;
        while (true) {
            j10 = -9223372036854775807L;
            if (i10 >= d()) {
                break;
            }
            if (((StreamKey) linkedList.peek()).f55131a != i10) {
                long e10 = e(i10);
                if (e10 != -9223372036854775807L) {
                    j11 += e10;
                }
            } else {
                g c10 = c(i10);
                arrayList.add(new g(c10.f60841a, c10.f60842b - j11, b(c10.f60843c, linkedList), c10.f60844d));
            }
            i10++;
        }
        long j12 = this.f60806b;
        if (j12 != -9223372036854775807L) {
            j10 = j12 - j11;
        }
        return new c(this.f60805a, j10, this.f60807c, this.f60808d, this.f60809e, this.f60810f, this.f60811g, this.f60812h, this.f60816l, this.f60813i, this.f60814j, this.f60815k, arrayList);
    }

    public final g c(int i10) {
        return this.f60817m.get(i10);
    }

    public final int d() {
        return this.f60817m.size();
    }

    public final long e(int i10) {
        long j10;
        long j11;
        if (i10 == this.f60817m.size() - 1) {
            j10 = this.f60806b;
            if (j10 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            j11 = this.f60817m.get(i10).f60842b;
        } else {
            j10 = this.f60817m.get(i10 + 1).f60842b;
            j11 = this.f60817m.get(i10).f60842b;
        }
        return j10 - j11;
    }

    public final long f(int i10) {
        return m0.S0(e(i10));
    }
}
