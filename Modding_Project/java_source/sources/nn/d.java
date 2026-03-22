package nn;

import java.util.Collections;
import java.util.List;
/* compiled from: HlsPlaylist.java */
/* loaded from: classes8.dex */
public abstract class d implements rn.b<d> {

    /* renamed from: a  reason: collision with root package name */
    public final String f62984a;

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f62985b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f62986c;

    /* JADX INFO: Access modifiers changed from: protected */
    public d(String str, List<String> list, boolean z10) {
        this.f62984a = str;
        this.f62985b = Collections.unmodifiableList(list);
        this.f62986c = z10;
    }
}
