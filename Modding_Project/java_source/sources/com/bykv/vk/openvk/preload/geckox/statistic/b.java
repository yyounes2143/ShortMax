package com.bykv.vk.openvk.preload.geckox.statistic;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.b.d;
import com.bykv.vk.openvk.preload.geckox.d.b.b.f;
import com.bykv.vk.openvk.preload.geckox.d.e;
import com.bykv.vk.openvk.preload.geckox.d.g;
import com.bykv.vk.openvk.preload.geckox.d.h;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import com.bykv.vk.openvk.preload.geckox.statistic.model.StatisticModel;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: UpdateListeners.java */
/* loaded from: classes3.dex */
public final class b {
    private static com.bykv.vk.openvk.preload.b.b.a a(final com.bykv.vk.openvk.preload.geckox.b bVar) {
        return new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.1
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.a(bVar2, dVar);
                try {
                    JSONObject f10 = com.bykv.vk.openvk.preload.geckox.b.this.f();
                    f10.put(dVar.getClass().getSimpleName() + "onStart", "");
                } catch (Throwable unused) {
                }
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                try {
                    JSONObject f10 = com.bykv.vk.openvk.preload.geckox.b.this.f();
                    f10.put(dVar.getClass().getSimpleName() + "onEnd", "");
                    if ((dVar instanceof e) && (dVar.f() instanceof Map)) {
                        com.bykv.vk.openvk.preload.geckox.b.this.f().put(dVar.getClass().getSimpleName(), ((Map) dVar.f()).get("f36c832c8dbb162c49b46a7a6dd47fbd"));
                    }
                } catch (Throwable unused) {
                }
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.c(bVar2, dVar);
                try {
                    c.a(com.bykv.vk.openvk.preload.geckox.b.this, a.a(dVar.b()));
                } catch (Throwable unused) {
                }
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                try {
                    JSONObject f10 = com.bykv.vk.openvk.preload.geckox.b.this.f();
                    f10.put(dVar.getClass().getSimpleName() + "onException", th2.toString());
                    c.a(com.bykv.vk.openvk.preload.geckox.b.this, a.a(dVar.b()));
                } catch (Throwable unused) {
                }
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.b(bVar2, dVar, th2);
                try {
                    JSONObject f10 = com.bykv.vk.openvk.preload.geckox.b.this.f();
                    f10.put(dVar.getClass().getSimpleName() + "onChainException", th2.toString());
                    c.a(com.bykv.vk.openvk.preload.geckox.b.this, a.a(dVar.b()));
                } catch (Throwable unused) {
                }
            }
        };
    }

    private static com.bykv.vk.openvk.preload.b.b.a b(final Context context) {
        return new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.5
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
                super.a(bVar, dVar);
                Pair pair = (Pair) bVar.b(h.class);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) pair.second).getChannel());
                a10.f11446d = ((Uri) pair.first).toString();
                a10.f11456n = com.bykv.vk.openvk.preload.geckox.utils.e.a(context);
                a10.f11448f = SystemClock.uptimeMillis();
                a10.f11457o = Long.valueOf(((UpdatePackage) pair.second).getPatch().getId());
                a10.f11458p = Long.valueOf(((UpdatePackage) pair.second).getFullPackage().getId());
                a10.f11445c = ((UpdatePackage) pair.second).getChannel();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
                super.b(bVar, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar.b(h.class)).second).getChannel());
                a10.f11450h = true;
                a10.f11449g = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
                super.a(bVar, dVar, th2);
                Pair pair = (Pair) bVar.b(h.class);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) pair.second).getChannel());
                String uri = ((Uri) pair.first).toString();
                a10.f11450h = false;
                a10.f11449g = SystemClock.uptimeMillis();
                a10.f11447e.add(new StatisticModel.PackageStatisticModel.DownloadFailRecords(uri, th2.getMessage()));
            }
        };
    }

    private static com.bykv.vk.openvk.preload.b.b.a a(final Context context) {
        return new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.4
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
                super.a(bVar, dVar);
                Pair pair = (Pair) bVar.b(g.class);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) pair.second).getChannel());
                a10.f11462t = ((Uri) pair.first).toString();
                a10.f11456n = com.bykv.vk.openvk.preload.geckox.utils.e.a(context);
                a10.f11464v = SystemClock.uptimeMillis();
                a10.f11458p = Long.valueOf(((UpdatePackage) pair.second).getFullPackage().getId());
                a10.f11445c = ((UpdatePackage) pair.second).getChannel();
                if (!TextUtils.isEmpty(((UpdatePackage) pair.second).getAccessKey())) {
                    a10.f11443a = ((UpdatePackage) pair.second).getAccessKey();
                }
                if (TextUtils.isEmpty(((UpdatePackage) pair.second).getGroupName())) {
                    return;
                }
                a10.f11444b = ((UpdatePackage) pair.second).getGroupName();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar) {
                super.b(bVar, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar.b(g.class)).second).getChannel());
                a10.f11468z = true;
                a10.f11465w = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar, d dVar, Throwable th2) {
                super.a(bVar, dVar, th2);
                Pair pair = (Pair) bVar.b(g.class);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) pair.second).getChannel());
                String uri = ((Uri) pair.first).toString();
                a10.f11468z = false;
                a10.f11465w = SystemClock.uptimeMillis();
                a10.f11463u.add(new StatisticModel.PackageStatisticModel.DownloadFailRecords(uri, th2.getMessage()));
            }
        };
    }

    public static void a(com.bykv.vk.openvk.preload.geckox.a aVar, com.bykv.vk.openvk.preload.geckox.b bVar) {
        aVar.a(e.class, a(bVar));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.d.class, a(bVar));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.c.class, b(bVar.a()));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.b.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.6
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11451i = false;
                SystemClock.uptimeMillis();
                a10.f11459q = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel()).f11451i = true;
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.d.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.7
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11452j = false;
                SystemClock.uptimeMillis();
                a10.f11460r = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel()).f11452j = true;
                SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.a.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.8
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11452j = false;
                a10.f11454l = SystemClock.uptimeMillis();
                a10.f11460r = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11452j = true;
                a10.f11454l = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.b.e.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.11
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11453k = false;
                a10.f11461s = th2.getMessage();
                a10.f11455m = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11453k = true;
                a10.f11455m = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.a.b.class, a(bVar.a()));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.a.a.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.9
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                a10.A = false;
                a10.f11466x = SystemClock.uptimeMillis();
                a10.C = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                a10.A = true;
                a10.f11466x = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.a.a.c.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.10
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                a10.B = false;
                a10.f11467y = SystemClock.uptimeMillis();
                a10.D = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                a10.B = true;
                a10.f11467y = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.b.c.class, b(bVar.a()));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.b.b.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.6
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11451i = false;
                SystemClock.uptimeMillis();
                a10.f11459q = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel()).f11451i = true;
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.b.d.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.7
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11452j = false;
                SystemClock.uptimeMillis();
                a10.f11460r = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel()).f11452j = true;
                SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.b.a.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.8
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11452j = false;
                a10.f11454l = SystemClock.uptimeMillis();
                a10.f11460r = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11452j = true;
                a10.f11454l = SystemClock.uptimeMillis();
            }
        });
        aVar.a(f.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.3
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11453k = false;
                a10.f11455m = SystemClock.uptimeMillis();
                a10.f11461s = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.c(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11453k = true;
                a10.f11455m = SystemClock.uptimeMillis();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.b(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(h.class)).second).getChannel());
                a10.f11453k = false;
                a10.f11455m = SystemClock.uptimeMillis();
                a10.D = th2.getMessage();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.a.b.class, a(bVar.a()));
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.a.a.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.9
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                a10.A = false;
                a10.f11466x = SystemClock.uptimeMillis();
                a10.C = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.b(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                a10.A = true;
                a10.f11466x = SystemClock.uptimeMillis();
            }
        });
        aVar.a(com.bykv.vk.openvk.preload.geckox.d.b.a.d.class, new com.bykv.vk.openvk.preload.b.b.a() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.b.2
            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void a(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.a(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                a10.B = false;
                a10.f11467y = SystemClock.uptimeMillis();
                a10.D = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void b(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar, Throwable th2) {
                super.b(bVar2, dVar, th2);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                a10.B = false;
                a10.f11467y = SystemClock.uptimeMillis();
                a10.D = th2.getMessage();
            }

            @Override // com.bykv.vk.openvk.preload.b.b.a
            public final <T> void c(com.bykv.vk.openvk.preload.b.b<T> bVar2, d dVar) {
                super.c(bVar2, dVar);
                com.bykv.vk.openvk.preload.geckox.statistic.model.a a10 = a.a(dVar.b()).a(((UpdatePackage) ((Pair) bVar2.b(g.class)).second).getChannel());
                a10.B = true;
                a10.f11467y = SystemClock.uptimeMillis();
            }
        });
    }
}
