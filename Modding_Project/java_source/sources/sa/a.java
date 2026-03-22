package sa;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import oa.a;
/* loaded from: classes5.dex */
public class a extends oa.a {

    /* renamed from: b  reason: collision with root package name */
    private static final List<a.InterfaceC0887a> f66342b = new CopyOnWriteArrayList();

    public static void a() {
        for (a.InterfaceC0887a interfaceC0887a : f66342b) {
            interfaceC0887a.onFinish();
        }
    }
}
