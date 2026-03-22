package w7;

import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
/* compiled from: ComponentRegistrarProcessor.java */
/* loaded from: classes5.dex */
public interface i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f69755a = new i() { // from class: w7.h
        @Override // w7.i
        public final List a(ComponentRegistrar componentRegistrar) {
            return componentRegistrar.getComponents();
        }
    };

    List<c<?>> a(ComponentRegistrar componentRegistrar);
}
