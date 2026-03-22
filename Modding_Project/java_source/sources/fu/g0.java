package fu;

import java.lang.annotation.Annotation;
/* compiled from: SkipCallbackExecutorImpl.java */
/* loaded from: classes8.dex */
final class g0 implements f0 {

    /* renamed from: d  reason: collision with root package name */
    private static final f0 f52028d = new g0();

    g0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Annotation[] a(Annotation[] annotationArr) {
        if (h0.l(annotationArr, f0.class)) {
            return annotationArr;
        }
        Annotation[] annotationArr2 = new Annotation[annotationArr.length + 1];
        annotationArr2[0] = f52028d;
        System.arraycopy(annotationArr, 0, annotationArr2, 1, annotationArr.length);
        return annotationArr2;
    }

    @Override // java.lang.annotation.Annotation
    public Class<? extends Annotation> annotationType() {
        return f0.class;
    }

    @Override // java.lang.annotation.Annotation
    public boolean equals(Object obj) {
        return obj instanceof f0;
    }

    @Override // java.lang.annotation.Annotation
    public int hashCode() {
        return 0;
    }

    @Override // java.lang.annotation.Annotation
    public String toString() {
        return "@" + f0.class.getName() + "()";
    }
}
