package uh;

import android.content.Context;
import com.startshorts.androidplayer.R$string;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClarityChooseDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private int f68432a;

    public d(int i10) {
        this.f68432a = i10;
    }

    @NotNull
    public final String a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (d()) {
            String string = context.getString(R$string.immersion_activity_resolution_auto);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f68432a);
        sb2.append('P');
        return sb2.toString();
    }

    public final int b() {
        return this.f68432a;
    }

    public final boolean c() {
        if (this.f68432a == 1080) {
            return true;
        }
        return false;
    }

    public final boolean d() {
        if (this.f68432a == 0) {
            return true;
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof d) && this.f68432a == ((d) obj).f68432a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Integer.hashCode(this.f68432a);
    }

    @NotNull
    public String toString() {
        return "ClarityData(resolutionValue=" + this.f68432a + ')';
    }
}
