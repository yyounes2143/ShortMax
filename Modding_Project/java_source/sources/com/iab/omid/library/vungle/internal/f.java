package com.iab.omid.library.vungle.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.vungle.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public class f {

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f23281b = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a  reason: collision with root package name */
    private final List<e> f23282a = new ArrayList();

    private e b(View view) {
        for (e eVar : this.f23282a) {
            if (eVar.c().get() == view) {
                return eVar;
            }
        }
        return null;
    }

    public List<e> a() {
        return this.f23282a;
    }

    public void c(View view) {
        a(view);
        e b10 = b(view);
        if (b10 != null) {
            this.f23282a.remove(b10);
        }
    }

    private void a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
    }

    public void b() {
        this.f23282a.clear();
    }

    public void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        a(view);
        a(str);
        if (b(view) == null) {
            this.f23282a.add(new e(view, friendlyObstructionPurpose, str));
        }
    }

    private void a(String str) {
        if (str != null) {
            if (str.length() > 50) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
            }
            if (!f23281b.matcher(str).matches()) {
                throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
            }
        }
    }
}
