.class public Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateChangeCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .line 2587
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    .line 2588
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .line 2589
    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 2593
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;->onBluetoothStateChange(Z)V

    .line 2594
    return-void
.end method
