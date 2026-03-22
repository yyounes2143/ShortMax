package io.bidmachine.iab.vast;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes7.dex */
public class VastUrlProcessorRegistry {
    @NonNull
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static List<um.b> f54689a = new a();

    /* loaded from: classes7.dex */
    class a extends ArrayList<um.b> {
        a() {
            add(new um.a());
        }
    }

    /* loaded from: classes7.dex */
    public interface b {
        void a(@Nullable String str);
    }

    @Nullable
    public static String a(@Nullable String str, @Nullable Bundle bundle) {
        if (str == null) {
            return null;
        }
        for (um.b bVar : f54689a) {
            str = bVar.a(str, bundle);
        }
        return str;
    }

    public static void b(@Nullable List<String> list, @Nullable Bundle bundle, @Nullable b bVar) {
        if (list != null && !list.isEmpty() && bVar != null) {
            for (String str : list) {
                bVar.a(a(str, bundle));
            }
        }
    }
}
