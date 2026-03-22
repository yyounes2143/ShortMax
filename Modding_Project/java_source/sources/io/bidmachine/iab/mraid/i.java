package io.bidmachine.iab.mraid;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.ArrayList;
/* loaded from: classes7.dex */
public final class i {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f54612a = {"sms", "tel", "inlineVideo", "calendar", "storePicture"};

    @NonNull
    private static ArrayList<String> a(@NonNull j jVar) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (jVar.f()) {
            arrayList.add("tel");
        }
        if (jVar.d()) {
            arrayList.add("sms");
        }
        if (jVar.c()) {
            arrayList.add("inlineVideo");
        }
        if (jVar.b()) {
            arrayList.add("calendar");
        }
        if (jVar.e()) {
            arrayList.add("storePicture");
        }
        return arrayList;
    }

    @NonNull
    public static String[] b(@NonNull Context context) {
        return (String[]) a(new j(context, f54612a)).toArray(new String[0]);
    }
}
