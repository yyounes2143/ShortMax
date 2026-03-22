package com.hades.aar.activity;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import java.util.UUID;
import kotlin.Metadata;
@Metadata
/* loaded from: classes5.dex */
public class IDActivity extends AppCompatActivity {

    /* renamed from: a  reason: collision with root package name */
    private String f21714a;

    public final String j() {
        return this.f21714a;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f21714a = UUID.randomUUID().toString();
    }
}
