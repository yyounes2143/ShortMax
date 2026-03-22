package com.inmobi.media;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
/* loaded from: classes5.dex */
public final class Bd {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC3269z5 f23517a;

    /* renamed from: b  reason: collision with root package name */
    public int f23518b = 101;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f23519c = CollectionsKt.h(101);

    /* renamed from: d  reason: collision with root package name */
    public final LinkedHashMap f23520d;

    public Bd(InterfaceC3269z5 interfaceC3269z5) {
        this.f23517a = interfaceC3269z5;
        List q10 = CollectionsKt.q(new C3150re(101, 1, 102, new C3165sd(this)), new C3150re(101, 4, 104, new C3181td(this)), new C3150re(102, 2, 103, new C3197ud(this)), new C3150re(102, 3, 104, new C3213vd(this)), new C3150re(102, 4, 104, new C3229wd(this)), new C3150re(102, 8, 107, new C3245xd(this)), new C3150re(102, 5, 105, new C3261yd(this)), new C3150re(103, 5, 105, new C3277zd(this)), new C3150re(106, 5, 105, new Ad(this)), new C3150re(106, 7, 105, new C3006id(this)), new C3150re(103, 8, 107, new C3022jd(this)), new C3150re(103, 4, 104, new C3038kd(this)), new C3150re(106, 2, 106, new C3054ld(this)), new C3150re(106, 4, 104, new C3070md(this)), new C3150re(106, 8, 107, new C3086nd(this)), new C3150re(104, 8, 107, new C3102od(this)), new C3150re(105, 7, 106, new C3118pd(this)), new C3150re(105, 4, 104, new C3134qd(this)), new C3150re(105, 2, 105, new C3149rd(this)));
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(kotlin.collections.p0.e(CollectionsKt.z(q10, 10)), 16));
        for (Object obj : q10) {
            C3150re c3150re = (C3150re) obj;
            linkedHashMap.put(ms.k.a(Integer.valueOf(c3150re.f25250a), Integer.valueOf(c3150re.f25251b)), obj);
        }
        this.f23520d = linkedHashMap;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.Lambda] */
    public final Integer a(int i10) {
        String str;
        C3150re c3150re = (C3150re) this.f23520d.get(ms.k.a(Integer.valueOf(this.f23518b), Integer.valueOf(i10)));
        if (c3150re != null) {
            c3150re.f25253d.invoke();
            StringBuilder sb2 = new StringBuilder("Transition: ");
            Map map = Cd.f23552a;
            int i11 = this.f23518b;
            Map map2 = Cd.f23552a;
            sb2.append((String) map2.get(Integer.valueOf(i11)));
            sb2.append(" --[");
            switch (i10) {
                case 1:
                    str = "IMRAID_LOAD_WEBVIEW";
                    break;
                case 2:
                    str = "FIRE_AD_READY";
                    break;
                case 3:
                    str = "FIRE_AD_FAILED";
                    break;
                case 4:
                    str = "ON_RENDER_PROCESS_GONE";
                    break;
                case 5:
                    str = "SHOW_WEBVIEW";
                    break;
                case 6:
                    str = "IMRAID_RENDERED";
                    break;
                case 7:
                    str = "IMRAID_FOCUS_CHANGE";
                    break;
                case 8:
                    str = "IMRAID_DESTROY_WEBVIEW";
                    break;
                default:
                    str = GrsBaseInfo.CountryCodeSource.UNKNOWN;
                    break;
            }
            sb2.append(str);
            sb2.append("]--> ");
            sb2.append((String) map2.get(Integer.valueOf(c3150re.f25252c)));
            System.out.println((Object) sb2.toString());
            this.f23519c.add(Integer.valueOf(c3150re.f25252c));
            InterfaceC3269z5 interfaceC3269z5 = this.f23517a;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).a("StateMachine", "history - " + this.f23519c);
            }
            this.f23518b = c3150re.f25252c;
            return null;
        }
        return Integer.valueOf(this.f23518b);
    }
}
