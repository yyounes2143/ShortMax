package t0;

import android.annotation.TargetApi;
import android.graphics.Path;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
/* compiled from: MergePathsContent.java */
@TargetApi(19)
/* loaded from: classes2.dex */
public class l implements m, j {

    /* renamed from: d  reason: collision with root package name */
    private final String f66736d;

    /* renamed from: f  reason: collision with root package name */
    private final MergePaths f66738f;

    /* renamed from: a  reason: collision with root package name */
    private final Path f66733a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final Path f66734b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final Path f66735c = new Path();

    /* renamed from: e  reason: collision with root package name */
    private final List<m> f66737e = new ArrayList();

    /* compiled from: MergePathsContent.java */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f66739a;

        static {
            int[] iArr = new int[MergePaths.MergePathsMode.values().length];
            f66739a = iArr;
            try {
                iArr[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f66739a[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f66739a[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f66739a[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f66739a[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public l(MergePaths mergePaths) {
        this.f66736d = mergePaths.c();
        this.f66738f = mergePaths;
    }

    private void b() {
        for (int i10 = 0; i10 < this.f66737e.size(); i10++) {
            this.f66735c.addPath(this.f66737e.get(i10).getPath());
        }
    }

    @TargetApi(19)
    private void e(Path.Op op2) {
        this.f66734b.reset();
        this.f66733a.reset();
        for (int size = this.f66737e.size() - 1; size >= 1; size--) {
            m mVar = this.f66737e.get(size);
            if (mVar instanceof d) {
                d dVar = (d) mVar;
                List<m> l10 = dVar.l();
                for (int size2 = l10.size() - 1; size2 >= 0; size2--) {
                    Path path = l10.get(size2).getPath();
                    path.transform(dVar.m());
                    this.f66734b.addPath(path);
                }
            } else {
                this.f66734b.addPath(mVar.getPath());
            }
        }
        m mVar2 = this.f66737e.get(0);
        if (mVar2 instanceof d) {
            d dVar2 = (d) mVar2;
            List<m> l11 = dVar2.l();
            for (int i10 = 0; i10 < l11.size(); i10++) {
                Path path2 = l11.get(i10).getPath();
                path2.transform(dVar2.m());
                this.f66733a.addPath(path2);
            }
        } else {
            this.f66733a.set(mVar2.getPath());
        }
        this.f66735c.op(this.f66733a, this.f66734b, op2);
    }

    @Override // t0.j
    public void d(ListIterator<c> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c previous = listIterator.previous();
            if (previous instanceof m) {
                this.f66737e.add((m) previous);
                listIterator.remove();
            }
        }
    }

    @Override // t0.c
    public void g(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < this.f66737e.size(); i10++) {
            this.f66737e.get(i10).g(list, list2);
        }
    }

    @Override // t0.m
    public Path getPath() {
        this.f66735c.reset();
        if (this.f66738f.d()) {
            return this.f66735c;
        }
        int i10 = a.f66739a[this.f66738f.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            e(Path.Op.XOR);
                        }
                    } else {
                        e(Path.Op.INTERSECT);
                    }
                } else {
                    e(Path.Op.REVERSE_DIFFERENCE);
                }
            } else {
                e(Path.Op.UNION);
            }
        } else {
            b();
        }
        return this.f66735c;
    }
}
