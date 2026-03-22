package u0;

import android.graphics.Path;
import com.airbnb.lottie.model.content.Mask;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MaskKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<z0.i, Path>> f67730a;

    /* renamed from: b  reason: collision with root package name */
    private final List<a<Integer, Integer>> f67731b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Mask> f67732c;

    public h(List<Mask> list) {
        this.f67732c = list;
        this.f67730a = new ArrayList(list.size());
        this.f67731b = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f67730a.add(list.get(i10).b().a());
            this.f67731b.add(list.get(i10).c().a());
        }
    }

    public List<a<z0.i, Path>> a() {
        return this.f67730a;
    }

    public List<Mask> b() {
        return this.f67732c;
    }

    public List<a<Integer, Integer>> c() {
        return this.f67731b;
    }
}
