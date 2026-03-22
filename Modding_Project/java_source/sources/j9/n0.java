package j9;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimeProvider.kt */
@Metadata
/* loaded from: classes5.dex */
public final class n0 implements m0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final n0 f60329a = new n0();

    private n0() {
    }

    @Override // j9.m0
    @NotNull
    public com.google.firebase.sessions.k a() {
        return new com.google.firebase.sessions.k(System.currentTimeMillis());
    }
}
