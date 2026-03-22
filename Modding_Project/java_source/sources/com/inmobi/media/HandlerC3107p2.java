package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.p2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class HandlerC3107p2 extends Handler {

    /* renamed from: a  reason: collision with root package name */
    public InterfaceC3269z5 f25130a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3107p2(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
    }

    public final void a(C3043l2 click) {
        List list;
        InterfaceC3269z5 interfaceC3269z5 = this.f25130a;
        if (interfaceC3269z5 != null) {
            String f10 = C3234x2.f();
            StringBuilder a10 = H6.a(f10, "access$getTAG$p(...)", "Retry attemps exhausted for click (");
            a10.append(click.f24944b);
            a10.append(')');
            ((A5) interfaceC3269z5).a(f10, a10.toString());
        }
        b(click);
        C3234x2.f25412a.a(click, "RETRY_EXHAUSTED");
        C3059m2 b10 = Nc.b();
        b10.getClass();
        Intrinsics.checkNotNullParameter(click, "click");
        b10.a("id = ?", new String[]{String.valueOf(click.f24943a)});
        list = C3234x2.f25416e;
        list.remove(click);
    }

    public final void b(C3043l2 c3043l2) {
        List list;
        List list2;
        int i10;
        List list3;
        int i11;
        AdConfig.ImaiConfig imaiConfig;
        list = C3234x2.f25416e;
        int v02 = CollectionsKt.v0(list, c3043l2);
        if (-1 != v02) {
            list2 = C3234x2.f25416e;
            int i12 = 0;
            if (v02 == list2.size() - 1) {
                i10 = 0;
            } else {
                i10 = v02 + 1;
            }
            list3 = C3234x2.f25416e;
            C3043l2 c3043l22 = (C3043l2) list3.get(i10);
            Message obtain = Message.obtain();
            if (c3043l22.f24947e) {
                i11 = 3;
            } else {
                i11 = 2;
            }
            obtain.what = i11;
            obtain.obj = c3043l22;
            imaiConfig = C3234x2.f25418g;
            if (imaiConfig != null) {
                i12 = imaiConfig.getPingInterval();
            }
            long j10 = i12 * 1000;
            if (System.currentTimeMillis() - c3043l22.f24949g < j10) {
                sendMessageDelayed(obtain, j10);
            } else {
                sendMessage(obtain);
            }
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message msg) {
        AtomicBoolean atomicBoolean;
        AdConfig.ImaiConfig imaiConfig;
        List list;
        List<C3043l2> list2;
        List list3;
        AtomicBoolean atomicBoolean2;
        AdConfig.ImaiConfig imaiConfig2;
        AtomicBoolean atomicBoolean3;
        AdConfig.ImaiConfig imaiConfig3;
        AtomicBoolean atomicBoolean4;
        List list4;
        List list5;
        List list6;
        AtomicBoolean atomicBoolean5;
        Intrinsics.checkNotNullParameter(msg, "msg");
        atomicBoolean = C3234x2.f25419h;
        if (!atomicBoolean.get()) {
            return;
        }
        try {
            int i10 = msg.what;
            int i11 = 3;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            InterfaceC3269z5 interfaceC3269z5 = this.f25130a;
                            if (interfaceC3269z5 != null) {
                                String f10 = C3234x2.f();
                                Intrinsics.checkNotNullExpressionValue(f10, "access$getTAG$p(...)");
                                ((A5) interfaceC3269z5).b(f10, "Unhandled message ( " + msg.what + " ) in pingHandler");
                                return;
                            }
                            return;
                        }
                        Object obj = msg.obj;
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.inmobi.ads.core.Click");
                        C3043l2 click = (C3043l2) obj;
                        InterfaceC3269z5 interfaceC3269z52 = this.f25130a;
                        if (interfaceC3269z52 != null) {
                            String f11 = C3234x2.f();
                            Intrinsics.checkNotNullExpressionValue(f11, "access$getTAG$p(...)");
                            ((A5) interfaceC3269z52).a(f11, "Processing click (" + click.f24944b + ") completed");
                        }
                        C3234x2.b(C3234x2.f25412a, click);
                        C3059m2 b10 = Nc.b();
                        b10.getClass();
                        Intrinsics.checkNotNullParameter(click, "click");
                        b10.a("id = ?", new String[]{String.valueOf(click.f24943a)});
                        list4 = C3234x2.f25416e;
                        list4.remove(click);
                        list5 = C3234x2.f25416e;
                        if (!list5.isEmpty()) {
                            list6 = C3234x2.f25416e;
                            C3043l2 c3043l2 = (C3043l2) list6.get(0);
                            Message obtain = Message.obtain();
                            if (c3043l2 == null || !c3043l2.f24947e) {
                                i11 = 2;
                            }
                            obtain.what = i11;
                            obtain.obj = c3043l2;
                            sendMessage(obtain);
                            return;
                        }
                        C3059m2 b11 = Nc.b();
                        b11.getClass();
                        if (T1.a(b11, null, null, 63) == 0) {
                            InterfaceC3269z5 interfaceC3269z53 = this.f25130a;
                            if (interfaceC3269z53 != null) {
                                String f12 = C3234x2.f();
                                Intrinsics.checkNotNullExpressionValue(f12, "access$getTAG$p(...)");
                                ((A5) interfaceC3269z53).a(f12, "Done processing all clicks!");
                            }
                            atomicBoolean5 = C3234x2.f25417f;
                            atomicBoolean5.set(false);
                            return;
                        }
                        Message obtain2 = Message.obtain();
                        obtain2.what = 1;
                        sendMessage(obtain2);
                    } else if (T9.a(false) != null) {
                        atomicBoolean4 = C3234x2.f25417f;
                        atomicBoolean4.set(false);
                        C3234x2.a(C3234x2.f25412a);
                    } else {
                        Object obj2 = msg.obj;
                        imaiConfig3 = C3234x2.f25418g;
                        if ((obj2 instanceof C3043l2) && imaiConfig3 != null) {
                            if (((C3043l2) obj2).f24948f != 0) {
                                C3043l2 c3043l22 = (C3043l2) obj2;
                                long pingCacheExpiry = imaiConfig3.getPingCacheExpiry();
                                c3043l22.getClass();
                                if (System.currentTimeMillis() - c3043l22.f24950h <= pingCacheExpiry * 1000) {
                                    int maxRetries = (imaiConfig3.getMaxRetries() - ((C3043l2) obj2).f24948f) + 1;
                                    if (maxRetries == 0) {
                                        InterfaceC3269z5 interfaceC3269z54 = this.f25130a;
                                        if (interfaceC3269z54 != null) {
                                            String f13 = C3234x2.f();
                                            Intrinsics.checkNotNullExpressionValue(f13, "access$getTAG$p(...)");
                                            ((A5) interfaceC3269z54).a(f13, "Pinging click (" + ((C3043l2) obj2).f24944b + ") in WebView");
                                        }
                                    } else {
                                        InterfaceC3269z5 interfaceC3269z55 = this.f25130a;
                                        if (interfaceC3269z55 != null) {
                                            String f14 = C3234x2.f();
                                            Intrinsics.checkNotNullExpressionValue(f14, "access$getTAG$p(...)");
                                            ((A5) interfaceC3269z55).b(f14, "Retry attempt #" + maxRetries + " for click (" + ((C3043l2) obj2).f24944b + ") using WebView");
                                        }
                                    }
                                    new C3138r2(new C3091o2(this), this.f25130a).a((C3043l2) obj2);
                                    return;
                                }
                            }
                            a((C3043l2) obj2);
                            return;
                        }
                        InterfaceC3269z5 interfaceC3269z56 = this.f25130a;
                        if (interfaceC3269z56 != null) {
                            String f15 = C3234x2.f();
                            Intrinsics.checkNotNullExpressionValue(f15, "access$getTAG$p(...)");
                            ((A5) interfaceC3269z56).b(f15, "Unhandled message due to ImaiConfig Null");
                        }
                    }
                } else if (T9.a(false) != null) {
                    atomicBoolean3 = C3234x2.f25417f;
                    atomicBoolean3.set(false);
                    C3234x2.a(C3234x2.f25412a);
                } else {
                    Object obj3 = msg.obj;
                    imaiConfig2 = C3234x2.f25418g;
                    if ((obj3 instanceof C3043l2) && imaiConfig2 != null) {
                        if (((C3043l2) obj3).f24948f != 0) {
                            C3043l2 c3043l23 = (C3043l2) obj3;
                            long pingCacheExpiry2 = imaiConfig2.getPingCacheExpiry();
                            c3043l23.getClass();
                            if (System.currentTimeMillis() - c3043l23.f24950h <= pingCacheExpiry2 * 1000) {
                                int maxRetries2 = (imaiConfig2.getMaxRetries() - ((C3043l2) obj3).f24948f) + 1;
                                if (maxRetries2 == 0) {
                                    InterfaceC3269z5 interfaceC3269z57 = this.f25130a;
                                    if (interfaceC3269z57 != null) {
                                        String f16 = C3234x2.f();
                                        Intrinsics.checkNotNullExpressionValue(f16, "access$getTAG$p(...)");
                                        ((A5) interfaceC3269z57).a(f16, "Pinging click (" + ((C3043l2) obj3).f24944b + ") over HTTP");
                                    }
                                } else {
                                    InterfaceC3269z5 interfaceC3269z58 = this.f25130a;
                                    if (interfaceC3269z58 != null) {
                                        String f17 = C3234x2.f();
                                        Intrinsics.checkNotNullExpressionValue(f17, "access$getTAG$p(...)");
                                        ((A5) interfaceC3269z58).a(f17, "Retry attempt #" + maxRetries2 + " for click (" + ((C3043l2) obj3).f24944b + ") over HTTP");
                                    }
                                }
                                new C3154s2(new C3075n2(this), this.f25130a).a((C3043l2) obj3);
                                return;
                            }
                        }
                        a((C3043l2) obj3);
                        return;
                    }
                    InterfaceC3269z5 interfaceC3269z59 = this.f25130a;
                    if (interfaceC3269z59 != null) {
                        String f18 = C3234x2.f();
                        Intrinsics.checkNotNullExpressionValue(f18, "access$getTAG$p(...)");
                        ((A5) interfaceC3269z59).b(f18, "Unhandled message due to ImaiConfig Null");
                    }
                }
            } else if (C3234x2.f25412a.g()) {
                imaiConfig = C3234x2.f25418g;
                C3059m2 b12 = Nc.b();
                if (imaiConfig != null) {
                    C3234x2.f25416e = b12.a(imaiConfig.getMaxEventBatch(), imaiConfig.getPingInterval());
                    list = C3234x2.f25416e;
                    if (list.isEmpty()) {
                        if (T1.a(b12, null, null, 63) == 0) {
                            atomicBoolean2 = C3234x2.f25417f;
                            atomicBoolean2.set(false);
                            return;
                        }
                        Message obtain3 = Message.obtain();
                        obtain3.what = 1;
                        sendMessageDelayed(obtain3, imaiConfig.getPingInterval() * 1000);
                        return;
                    }
                    InterfaceC3269z5 interfaceC3269z510 = this.f25130a;
                    if (interfaceC3269z510 != null) {
                        String f19 = C3234x2.f();
                        Intrinsics.checkNotNullExpressionValue(f19, "access$getTAG$p(...)");
                        ((A5) interfaceC3269z510).a(f19, "Processing following click batch");
                    }
                    list2 = C3234x2.f25416e;
                    for (C3043l2 c3043l24 : list2) {
                        Intrinsics.checkNotNullExpressionValue(C3234x2.f(), "access$getTAG$p(...)");
                        String str = c3043l24.f24944b;
                    }
                    list3 = C3234x2.f25416e;
                    C3043l2 c3043l25 = (C3043l2) list3.get(0);
                    Message obtain4 = Message.obtain();
                    if (!c3043l25.f24947e) {
                        i11 = 2;
                    }
                    obtain4.what = i11;
                    obtain4.obj = c3043l25;
                    long currentTimeMillis = System.currentTimeMillis() - c3043l25.f24949g;
                    if (currentTimeMillis < imaiConfig.getPingInterval() * 1000) {
                        sendMessageDelayed(obtain4, (imaiConfig.getPingInterval() * 1000) - currentTimeMillis);
                        return;
                    } else {
                        sendMessage(obtain4);
                        return;
                    }
                }
                InterfaceC3269z5 interfaceC3269z511 = this.f25130a;
                if (interfaceC3269z511 != null) {
                    String f20 = C3234x2.f();
                    Intrinsics.checkNotNullExpressionValue(f20, "access$getTAG$p(...)");
                    ((A5) interfaceC3269z511).b(f20, "Unhandled message due to ImaiConfig Null");
                }
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z512 = this.f25130a;
            if (interfaceC3269z512 != null) {
                String f21 = C3234x2.f();
                ((A5) interfaceC3269z512).b(f21, rf.a(e10, H6.a(f21, "access$getTAG$p(...)", "SDK encountered unexpected error in processing ping; ")));
            }
        }
    }
}
